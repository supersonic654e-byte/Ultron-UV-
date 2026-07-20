# Privacy and Security Checklist Before Publishing

## Content Accuracy

- [ ] Current prototype capability is separated from planned features.
- [ ] The repository does not claim production readiness, medical certification, or clinical efficacy without evidence.
- [ ] Health, market, cost, and performance claims are supported by citations or removed.
- [ ] Every screenshot and diagram matches the current system.

## Secrets and Infrastructure

- [ ] No `.env` file is tracked.
- [ ] No API keys, passwords, access tokens, certificates, or private keys are present.
- [ ] No real VPN IP, internal hostname, broker URL, database URL, or server path is present.
- [ ] Real Zenoh, MQTT, Docker, SSH, and VPN configuration is excluded.
- [ ] Git history has been scanned, not only the latest working tree.

## Personal and Organizational Information

- [ ] Names, emails, academic details, and contact information have consent for publication.
- [ ] University, sponsor, partner, and company names/logos have approval.
- [ ] Photos contain no unapproved faces, badges, documents, room numbers, or screens.
- [ ] Image and document metadata has been removed.

## Data and Intellectual Property

- [ ] No hospital map, facility floor plan, patient information, or operational dataset is included.
- [ ] No proprietary business logic or restricted firmware is included.
- [ ] Third-party images, logos, datasets, and code have compatible licenses or permission.
- [ ] A deliberate software/hardware/documentation license decision has been made.

## Safety

- [ ] UV-C hazards and prototype limitations are prominently stated.
- [ ] Hazardous operating parameters are not published casually.
- [ ] Motion and fail-safe features have test evidence.
- [ ] Public code defaults to hazardous outputs disabled.

## Final Commands

```bash
./scripts/prepublish_check.sh
git status
git ls-files | sort
git log --stat --oneline
```

Also inspect the full Git history with a dedicated secret-scanning tool before making the repository public.
