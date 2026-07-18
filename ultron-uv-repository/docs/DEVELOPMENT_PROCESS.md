# Development Process

## 1. Problem framing

The team defined a healthcare-support use case focused on reducing repeated human exposure during environmental disinfection work.

## 2. Hardware prototyping

A differential-drive mobile base and earlier UV-C hardware platforms were assembled and tested separately.

## 3. Embedded control

Motor control, encoder feedback, watchdog behavior, emergency-stop handling, current monitoring, and battery monitoring were organized around an embedded controller.

## 4. ROS 2 integration

Sensor drivers, serial bridging, state estimation, safety gating, mapping, and navigation were organized as ROS 2 nodes.

## 5. Architecture split

Heavy navigation and visualization workloads were moved to a laptop/workstation, while hardware-facing and safety-relevant processes remained on the robot.

## 6. Network design

Zenoh-based ROS 2 routing over an encrypted private network was selected for cross-network communication. Real endpoints and credentials are excluded from the public repository.

## 7. Safety and testing

The design includes local command filtering, watchdogs, timeouts, emergency-stop behavior, and controlled testing before any UV-C integration.

## 8. Current focus

The next engineering stage is controlled integration, measurable navigation testing, human-safety validation, and clear separation between demonstrated and planned capabilities.
