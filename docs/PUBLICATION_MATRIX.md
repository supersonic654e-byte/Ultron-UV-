# Publication Classification Matrix

This classification is based on the supplied project documents and images.

## Safe to Publish

| Item | Decision | Conditions |
|---|---|---|
| ROS 2 node communication diagram | Safe to publish | Remove metadata and confirm no private endpoint was added later |
| Two-layer architecture diagram | Safe to publish | Keep network endpoints generic |
| Five-layer system architecture diagram | Safe to publish | Correct any outdated technology labels before release |
| General technology stack | Safe to publish | List technologies without real hostnames, IPs, or account details |
| High-level development process | Safe to publish | Separate verified work from planned work |
| Non-sensitive test methodology | Safe to publish | Do not include hospital data or hazardous UV-C operating parameters |

## Publish After Anonymization or Permission

| Item | Risk | Required action |
|---|---|---|
| One-page project brief | Team identity, broad health/performance claims | Remove or approve team/institution names; qualify unvalidated claims |
| Ultron UV project brief image | Team name and strong outcome claims | Add research-prototype status and claim qualifiers |
| Ten-year vision presentation | Institution/team identity and unsupported market claims | Cite evidence or remove claims; obtain permission for names/logos |
| BEAR Summit pre-proposal | Full member names, academic details, team email, internal application text | Do not publish the original; create a sanitized public summary |
| UAP poster PDF | Partner names, institutional logos, people in photographs, device/facility images, author metadata | Obtain consent, crop/blur as needed, remove metadata, and verify asset rights |
| Prototype photographs | Lab background and unpublished mechanical details | Crop to the robot, remove metadata, check screens/documents/faces |
| Project roadmap | Commercial and operational strategy | Publish only high-level milestones approved by the team |

## Do Not Publish As-Is

| Item | Reason |
|---|---|
| Private implementation notes | May contain default credentials, example private-network addresses, detailed deployment paths, exact safety/calibration values, wiring/pin mappings, and internal operational procedures |
| Real `.env` files | Credentials and deployment configuration |
| Real Zenoh/Tailscale/VPN configurations | Private endpoints, peer information, and network topology |
| Private firmware and safety calibration | Proprietary and safety-critical implementation details |
| Raw maps, rosbag files, telemetry, and logs | May reveal facility layout, operations, device IDs, and personal information |
| Private datasets or AI training data | Privacy, consent, licensing, and proprietary risks |
| Hospital/client/partner documents | Confidential and reputational risk |
| Original competition submission containing personal details | Personal information and internal project material |

## Strategic Recommendation

Maintain two repositories:

1. **Public portfolio repository** - sanitized architecture, selected code modules, tests, diagrams, demo video, and verified results.
2. **Private implementation repository** - full source, firmware, deployment, calibration, maps, datasets, safety parameters, and operational procedures.
