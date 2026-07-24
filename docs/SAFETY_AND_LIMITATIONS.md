# Safety and Limitations

## Research status

Ultron UV is a research prototype. It is not a certified medical device, a validated disinfection product, or a production-ready hospital system.

## UV-C safety

UV-C radiation can injure eyes and skin. Any UV-C test requires qualified supervision, physical interlocks, human-presence detection, emergency shutdown, controlled access, and institutional approval.

## Mobile-robot safety

Public documentation describes high-level safeguards such as command timeouts, heartbeat monitoring, emergency stop, local safety arbitration, and network-loss shutdown. Exact restricted calibration values are not published.

## Known limitations

- Robot-to-robot dispatch is not publicly validated.
- AI risk scoring is a **roadmap capability** — the data-collection surface (admin dashboard) exists, but the prediction model does not. See [AI Architecture](AI_ARCHITECTURE.md).
- The admin and operator dashboards are **front-end demonstrations** of the interface and data model; live telemetry is shown only when a physical unit is connected.
- Hospital deployment and clinical efficacy testing have not been completed.
- Public installation material does not include private deployment configuration.
- Performance metrics must be added only after repeatable tests.
