<div align="center">

# Ultron UV

### Low-cost autonomous UV-C disinfection robotics for safer healthcare environments

**Team Ultron UV | University of Asia Pacific | Robotics + AIoT**

[![ROS 2](https://img.shields.io/badge/ROS%202-Humble-22314E?logo=ros&logoColor=white)](https://docs.ros.org/en/humble/)
[![Status](https://img.shields.io/badge/status-research%20prototype-orange)](#project-status)
[![Medical Use](https://img.shields.io/badge/medical%20use-not%20validated-critical)](#safety-notice)
[![BEAR Summit](https://img.shields.io/badge/BEAR%20Summit-2026-0B5CAD)](https://bear-summit-2026.vercel.app/)

<img src="docs/assets/dual-prototype-platforms.jpg" alt="Ultron UV prototype platforms" width="900" />

*A UV-C tower platform and autonomous sensing/navigation prototype shown together during development.*

</div>

---

## One-line Summary

Ultron UV is a research prototype for an autonomous hospital disinfection robot that combines ROS 2 navigation, LiDAR/depth sensing, embedded safety control, and UV-C disinfection hardware to reduce manual exposure in high-risk indoor healthcare areas.

## Problem

Hospitals and clinics need frequent, repeatable disinfection of corridors, isolation zones, emergency areas, and patient-contact routes. Manual chemical disinfection is labor-intensive and can repeatedly expose cleaning staff and healthcare workers to contaminated environments.

This matters especially in resource-constrained settings where imported disinfection robots are expensive, maintenance support is limited, and infection-control teams are under pressure during outbreaks.

## Proposed Solution

Ultron UV is being developed as a locally maintainable autonomous platform that can:

- Map indoor corridor-like environments.
- Navigate through predefined disinfection routes.
- Detect obstacles and nearby humans.
- Disable UV-C output when human presence is detected.
- Support manual override and supervised operation.
- Keep the architecture modular so hospitals can service and upgrade the system locally.

The project is currently a research and exhibition prototype. It is not a certified medical device and has not completed clinical efficacy validation.

## Project Status

| Capability | Current status | Evidence |
|---|---|---|
| UV-C tower hardware | Built as an earlier prototype | Prototype photos |
| Mobile sensing/navigation platform | Built and under integration | Prototype photos |
| ROS 2 system architecture | Designed and under development | Architecture diagrams |
| LiDAR/depth/IMU/encoder integration | Integration stage | Hardware photos and node plan |
| SLAM/localization/Nav2 workflow | Testing stage | Public test matrix pending |
| Human-presence safety shutdown | Design stage; validation required | Safety plan |
| Autonomous UV-C route execution | Planned integration | Roadmap |
| Hospital pilot and regulatory validation | Not completed | Future milestone |

The repository deliberately separates built, testing, and planned capabilities so visitors, judges, mentors, and investors can evaluate the project honestly.

## Prototype Gallery

| UV-C tower | Autonomous base |
|---|---|
| <img src="docs/assets/uv-tower-labeled.jpg" alt="Labeled UV-C tower prototype" width="390"/> | <img src="docs/assets/navigation-base-prototype.jpg" alt="Autonomous navigation base" width="430"/> |
| Early UV-C disinfection hardware with tower, sensors, and control box. | Mobile platform with depth camera, LiDAR, embedded controller, and edge-compute hardware. |

| Two-platform direction | Architecture overview |
|---|---|
| <img src="docs/assets/dual-prototype-platforms.jpg" alt="Two Ultron UV prototype platforms" width="430"/> | <img src="docs/assets/two-layer-architecture.jpg" alt="Two-layer architecture" width="430"/> |
| UV-C hardware and autonomous sensing platform shown together. | Edge and remote compute split for practical ROS 2 development. |

## Target Workflow

```mermaid
flowchart LR
    A[Hospital corridor or isolation zone] --> B[Map and route planning]
    B --> C[Human and obstacle checks]
    C --> D{Area clear?}
    D -- No --> E[Stop, wait, alert, or re-plan]
    D -- Yes --> F[Supervised UV-C disinfection cycle]
    F --> G[Safety monitoring during operation]
    G --> H{Human detected?}
    H -- Yes --> I[UV-C off and robot stop]
    H -- No --> J[Log cycle and return]
```

## Technology Stack

| Area | Tools and components |
|---|---|
| Robotics middleware | ROS 2 Humble |
| Navigation | Nav2, SLAM Toolbox, RViz2 |
| State estimation | `robot_localization` EKF |
| Edge compute | NVIDIA Jetson Nano |
| Embedded control | Arduino Mega 2560 |
| Sensors | RPLidar, depth camera, MPU6050 IMU, wheel encoders |
| Communication | Zenoh-based ROS 2 routing over private transport |
| Languages | Python, C/C++, Bash, YAML |

## Safety Notice

> [!CAUTION]
> UV-C radiation can injure eyes and skin. Ultron UV must not be operated with UV-C lamps energized in occupied environments unless qualified safety controls, interlocks, supervision, and institutional approval are in place.

This repository makes no claim of clinical efficacy, sterilization performance, regulatory approval, or production readiness. Public documentation avoids publishing private credentials, real deployment maps, restricted calibration values, and safety-critical implementation details.

## Exhibition Materials

- [30-second pitch and booth FAQ](docs/EXHIBITION_PLAYBOOK.md)
- [CES 2027 and funding strategy](docs/CES_AND_FUNDING_STRATEGY.md)
- [Public architecture](docs/ARCHITECTURE.md)
- [Safety and limitations](docs/SAFETY_AND_LIMITATIONS.md)
- [Testing matrix](docs/TESTING.md)

## Roadmap

| Period | Milestone |
|---|---|
| 2026 | Complete BEAR Summit prototype demonstration, publish public-safe test evidence, and refine safety architecture |
| 2027-2028 | Controlled hospital-like pilot testing, UV-C safety validation, workflow studies, and prototype cost optimization |
| 2029-2031 | Multi-ward deployment research, fleet coordination, maintenance model, and commercialization preparation |
| 2032-2036 | Regional infection-control robotics platform with analytics, service partnerships, and export potential |

## Current Ask

We are looking for:

- Healthcare mentors for infection-control workflow review.
- Robotics mentors for navigation, safety, and reliability testing.
- UV-C/electrical safety reviewers for safe validation planning.
- Hospital or lab partners for controlled non-clinical pilot environments.
- Startup and grant advisors for productization, costing, and regulatory strategy.

## Team

**Team Ultron UV**  
Primary institution: **University of Asia Pacific**  
Contact: use GitHub Issues for public questions.

---

<div align="center">

**Built in Bangladesh. Designed for safer healthcare environments.**

</div>
