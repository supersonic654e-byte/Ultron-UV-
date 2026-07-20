# Public System Architecture

## Scope

This document explains the public-safe architecture of the Ultron UV research platform. Deployment credentials, exact private network endpoints, restricted calibration values, and proprietary implementation details are intentionally excluded.

## Compute split

### Edge layer

The on-robot edge layer is responsible for sensor acquisition, serial communication, local command filtering, watchdog monitoring, and motor-control interfacing. Safety-relevant decisions are kept close to the physical platform so that a remote-compute or network failure does not remove the final stop authority.

### Remote layer

The remote layer handles computationally heavier functions such as SLAM, localization, navigation planning, RViz visualization, and supervisory telemetry.

## Public data flow

```text
Sensors -> Drivers -> Safety monitor -> State estimation
        -> SLAM / Nav2 -> Safe command -> Embedded control -> Motors
```

## Diagrams

![ROS 2 node communication](assets/ros2-node-communication.png)

![Two-layer architecture](assets/two-layer-architecture.jpg)

## Information intentionally withheld

- Real VPN or Zenoh addresses
- Device credentials and certificates
- Restricted safety calibration values
- Facility maps and deployment routes
- Private source modules and proprietary control logic
