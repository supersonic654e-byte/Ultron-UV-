# Exhibition Playbook

## 30-second elevator pitch

We are not building only one robot — we are building a **local medical robotics platform for Bangladesh**, and starting an **AI journey on our own hospital data**. Ultron UV is our first version: a low-cost autonomous UV-C disinfection robot. Later versions add logistics, patient monitoring, and clinical decision support, all feeding a made-in-Bangladesh AI. The robot is built to be manufactured, serviced, and improved locally. Our goal this year is BEAR Summit; our target next year is CES 2027.

## 10-second version

Ultron UV is a low-cost autonomous UV-C robot that helps hospitals disinfect high-risk areas more often — and it's the first step toward a Bangladeshi medical robotics platform and a locally-built hospital AI.

## What to show first

1. Start with the **physical robot** (or the [gallery](../README.md#prototype-gallery)), not slides.
2. State the problem in one sentence (nurse shortage, infection risk, expensive imports).
3. Open the **[live admin dashboard](https://supersonic654e-byte.github.io/Ultron-WebApp-Admin-dashboard/#/home)** to prove there's a real data platform behind the robot.
4. Explain the **4-version roadmap** and where the **AI** fits (collect → pattern → predict).
5. Be explicit about current status: prototype, not certified medical device.
6. End every serious conversation with a specific ask: mentor, pilot site, safety reviewer, grant lead, or investor follow-up.

## Judge and visitor questions

| Question | Strong answer direction |
|---|---|
| What problem are you solving? | Repeatable disinfection in high-risk healthcare spaces without repeated staff exposure. |
| Why not manual cleaning? | Manual cleaning remains necessary, but robots can add more frequent, consistent, supervised disinfection cycles. |
| Is UV-C safe? | UV-C is hazardous. Our design requires human detection, interlocks, emergency stop, controlled access, and qualified validation before real deployment. |
| Is this clinically proven? | Not yet. This is a research prototype. We are preparing controlled validation and will not claim clinical efficacy before testing. |
| What is different? | Local affordability, modular serviceability, ROS 2 autonomy, a **live data platform**, and a **made-in-Bangladesh AI roadmap** — designed for Bangladeshi healthcare constraints. |
| Who pays? | Hospitals, diagnostic centers, government/public-health programs, and service contractors that need repeatable disinfection capacity. |
| What about AI? | Same pattern as Tesla/Netflix: collect data → find patterns → predict. V1 already logs disinfection data; V4 will predict outbreak risk. See [AI Architecture](AI_ARCHITECTURE.md). |
| What is your next milestone? | Demonstrate reliable supervised navigation, publish repeatable safety tests, and secure a controlled pilot environment. |
| What support do you need? | Healthcare workflow mentors, UV-C safety reviewers, pilot spaces, robotics reliability advice, and prototype funding. |

## Booth rules for the team

- Never turn on real UV-C near visitors.
- Never say "sterilizes everything" or "clinically proven" unless certified evidence exists.
- Do not hide limitations. Judges trust precise teams more than perfect-sounding teams.
- Keep one teammate on technical demo, one on pitch/Q&A, and one on contact collection.
- Record every serious lead with name, organization, role, phone/email, interest, and promised follow-up.

## One-minute technical explanation

The robot uses a layered architecture. The embedded layer handles motor control, watchdogs, and emergency stop behavior. The robot sensing layer collects LiDAR, depth-camera, IMU, and encoder data. ROS 2 handles mapping, localization, and navigation planning. Safety logic gates robot motion and UV-C activation so hazardous output is allowed only under controlled conditions. Heavy navigation work can run on a remote computer while the robot keeps local stop authority.

## Follow-up ask script

We are looking for a controlled pilot environment and technical mentors. If your organization can help with infection-control workflow review, UV-C safety validation, hospital operations feedback, or prototype funding, we would like to schedule a 20-minute follow-up after BEAR Summit.
