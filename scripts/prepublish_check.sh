#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
cd "$ROOT"

fail=0
warn=0

echo "[1/6] Checking forbidden tracked filenames..."
if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  mapfile -t files < <(git ls-files)
else
  mapfile -t files < <(find . -type f -not -path './.git/*' -printf '%P\n')
fi

for file in "${files[@]}"; do
  case "$file" in
    .env|*.pem|*.p12|*.pfx|id_rsa*|id_ed25519*|*credentials*|*secrets*|config/private/*|docs/internal/*)
      echo "ERROR: forbidden file: $file"
      fail=1
      ;;
  esac
done

echo "[2/6] Checking for private keys and common secret formats..."
patterns=(
  '-----BEGIN (RSA |EC |OPENSSH )?PRIVATE KEY-----'
  'AKIA[0-9A-Z]{16}'
  'gh[pousr]_[A-Za-z0-9_]{20,}'
  'xox[baprs]-[A-Za-z0-9-]{10,}'
  '(password|passwd|api[_-]?key|access[_-]?token|client[_-]?secret)[[:space:]]*[:=][[:space:]]*[^[:space:]]{8,}'
)
for pattern in "${patterns[@]}"; do
  matches=$(grep -RInE --binary-files=without-match \
      --exclude='.env.example' --exclude='prepublish_check.sh' \
      --exclude-dir='.git' "$pattern" . 2>/dev/null || true)
  matches=$(printf '%s\n' "$matches" | grep -Ev 'YOUR_|REMOVED|PLACEHOLDER|EXAMPLE|os\.environ|\$\{' || true)
  if [[ -n "$matches" ]]; then
    printf '%s\n' "$matches"
    echo "ERROR: possible secret matched pattern: $pattern"
    fail=1
  fi
done

echo "[3/6] Checking email addresses..."
matches=$(grep -RInE --binary-files=without-match \
    --exclude='prepublish_check.sh' --exclude-dir='.git' \
    '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}' . 2>/dev/null || true)
matches=$(printf '%s\n' "$matches" | grep -Ev 'YOUR_|REMOVED|example\.com' || true)
if [[ -n "$matches" ]]; then
  printf '%s\n' "$matches"
  echo "WARNING: email address found. Confirm it is approved for public use."
  warn=1
fi

echo "[4/6] Checking IPv4 addresses..."
matches=$(grep -RInE --binary-files=without-match \
    --exclude='prepublish_check.sh' --exclude-dir='.git' \
    '([0-9]{1,3}\.){3}[0-9]{1,3}' . 2>/dev/null || true)
matches=$(printf '%s\n' "$matches" | grep -vE '(127\.0\.0\.1|0\.0\.0\.0|192\.0\.2\.|198\.51\.100\.|203\.0\.113\.)' || true)
if [[ -n "$matches" ]]; then
  printf '%s\n' "$matches"
  echo "WARNING: IPv4 address found. Replace real addresses with placeholders."
  warn=1
fi

echo "[5/6] Checking large files (>10 MB)..."
while IFS= read -r -d '' file; do
  size=$(stat -c%s "$file")
  if (( size > 10485760 )); then
    echo "WARNING: large file: $file ($size bytes)"
    warn=1
  fi
done < <(find . -type f -not -path './.git/*' -print0)

echo "[6/6] Checking risky project keywords..."
matches=$(grep -RInE --binary-files=without-match --exclude-dir='.git' \
    '(Status[[:space:]]*:[[:space:]]*Production-Ready|clinically proven|100% sterilization|guaranteed disinfection)' README.md src config firmware 2>/dev/null || true)
if [[ -n "$matches" ]]; then
  printf '%s\n' "$matches"
  echo "WARNING: review the matched claim or private-data reference."
  warn=1
fi

if (( fail )); then
  echo "Pre-publication check FAILED."
  exit 1
fi

if (( warn )); then
  echo "Pre-publication check completed with warnings. Review every match."
else
  echo "Pre-publication check passed."
fi
