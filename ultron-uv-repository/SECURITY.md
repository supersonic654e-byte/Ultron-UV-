# Security Policy

## Supported Content

This public repository contains documentation, sanitized diagrams, and approved public modules only. Private deployment code and credentials must remain in a separate private repository or secure secret-management system.

## Reporting a Vulnerability

Do not disclose security issues in a public GitHub issue.

Report privately to:

```text
SECURITY_CONTACT_REMOVED
```

Replace this placeholder only with a monitored security contact approved for public use.

## Prohibited Content

Never commit:

- API keys, passwords, access tokens, certificates, or private keys
- `.env` files or real middleware configuration
- VPN addresses, peer lists, account identifiers, or authentication URLs
- Hospital maps, facility floor plans, patient data, or private datasets
- Real broker endpoints, usernames, or connection strings
- Unreviewed motor-control, UV-C control, or safety calibration files
- Debug logs containing device IDs, usernames, paths, or network information

## Secret Exposure Response

If a secret is committed:

1. Revoke or rotate it immediately.
2. Remove it from the current files.
3. Purge it from Git history using an appropriate history-rewrite tool.
4. Force-push only after coordinating with all collaborators.
5. Review logs and access records for misuse.
6. Add a preventive ignore rule and scanning check.

Deleting the latest commit alone is not sufficient because the secret may remain in Git history.
