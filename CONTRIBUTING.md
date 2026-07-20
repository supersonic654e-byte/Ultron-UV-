# Contributing

## Before Opening a Pull Request

1. Confirm that the contribution is approved for public release.
2. Run `./scripts/prepublish_check.sh`.
3. Remove personal names, emails, real IP addresses, facility maps, and credentials.
4. Use placeholders in configuration examples.
5. Separate implemented functionality from roadmap functionality.
6. Add or update tests for code changes.
7. Document safety implications for any motion-control or UV-C-related change.

## Pull Request Requirements

A pull request should state:

- What changed
- Why it changed
- How it was tested
- Whether it affects motion, safety, networking, or UV-C controls
- Whether any new file contains third-party assets or requires permission

## Safety-Critical Changes

Changes involving motors, watchdogs, emergency stops, human detection, UV-C activation, or autonomous navigation require an independent review and controlled test evidence before merge.
