# Exhibition Playbook

## 30-second elevator pitch

Hospital corridors and isolation areas need frequent disinfection, but manual cleaning exposes staff and is hard to repeat consistently during outbreaks. Ultron UV is a low-cost autonomous UV-C disinfection robot for healthcare environments. It uses ROS 2 navigation, LiDAR/depth sensing, obstacle avoidance, and human-safety shutdown so disinfection can happen under supervision with less direct exposure. Our focus is not just a demo robot, but a locally maintainable infection-control platform that Bangladesh can pilot, improve, and eventually export.

## 10-second version

Ultron UV is a low-cost autonomous UV-C robot that helps hospitals disinfect high-risk indoor areas more often while reducing direct staff exposure.

## What to show first

1. Start with the real prototype photo or the physical robot, not slides.
2. State the problem in one sentence.
3. Demonstrate navigation or safety logic before explaining components.
4. Be explicit about current status: prototype, not certified medical device.
5. End every serious conversation with a specific ask: mentor, pilot site, safety reviewer, grant lead, or investor follow-up.

## Judge and visitor questions

| Question | Strong answer direction |
|---|---|
| What problem are you solving? | Repeatable disinfection in high-risk healthcare spaces without repeated staff exposure. |
| Why not manual cleaning? | Manual cleaning remains necessary, but robots can add more frequent, consistent, supervised disinfection cycles. |
| Is UV-C safe? | UV-C is hazardous. Our design requires human detection, interlocks, emergency stop, controlled access, and qualified validation before real deployment. |
| Is this clinically proven? | Not yet. This is a research prototype. We are preparing controlled validation and will not claim clinical efficacy before testing. |
| What is different? | Local affordability, modular serviceability, ROS 2 autonomy, and safety-first deployment for Bangladeshi healthcare constraints. |
| Who pays? | Hospitals, diagnostic centers, government/public-health programs, and service contractors that need repeatable disinfection capacity. |
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
