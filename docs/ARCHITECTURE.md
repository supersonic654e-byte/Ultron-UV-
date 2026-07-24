# Public System Architecture

## Scope

This document explains the public-safe architecture of the Ultron UV research platform. Deployment credentials, exact private network endpoints, restricted calibration values, and proprietary implementation details are intentionally excluded.

## Compute split

Ultron UV is a **layered system** spanning the physical robot, a cloud data platform, and (on the roadmap) an AI layer. The high-level layers are:

```text
[ AI layer (roadmap) ]   learn from accumulated data → predict → recommend
        ▲
[ Cloud data platform ]  admin dashboard + disinfection/environment logs  (live demo)
        ▲
[ Remote compute ]       SLAM, localization, Nav2 planning, RViz
        ▲
[ Edge compute (on robot) ] sensors, serial, safety arbitration, motor control
```

### Edge layer

The on-robot edge layer is responsible for sensor acquisition, serial communication, local command filtering, watchdog monitoring, and motor-control interfacing. Safety-relevant decisions are kept close to the physical platform so that a remote-compute or network failure does not remove the final stop authority.

### Remote layer

The remote layer handles computationally heavier functions such as SLAM, localization, navigation planning, RViz visualization, and supervisory telemetry.

### Cloud data platform (live)

Cycle logs and sensor data flow into the [admin dashboard](https://supersonic654e-byte.github.io/Ultron-WebApp-Admin-dashboard/#/home), which is the data-collection surface for the whole fleet. See [Live Demos](LIVE_DEMOS.md).

### AI layer (roadmap)

The accumulated records are the training surface for the [AI roadmap](AI_ARCHITECTURE.md) — collect → pattern → predict. This layer is a roadmap capability, not a working product today.

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
