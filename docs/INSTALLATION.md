# Installation and Run Guide

## Scope

This public repository does not include private deployment configuration, facility maps, credentials, or unreviewed safety-critical source code. Do not treat example commands as deployment-ready until the corresponding source modules, tests, and safety reviews are complete.

## Recommended Platforms

### Edge computer

- NVIDIA Jetson Nano or approved replacement
- Linux host compatible with the selected JetPack/container setup
- Docker and Docker Compose
- USB access to the embedded controller, LiDAR, depth camera, and IMU

### Remote computer

- Ubuntu 22.04 or another validated ROS 2 Humble platform
- ROS 2 Humble
- Nav2
- SLAM Toolbox
- `robot_localization`
- RViz2
- Zenoh-compatible ROS 2 middleware

## Public Setup Workflow

```bash
git clone https://github.com/supersonic654e-byte/Ultron-UV-.git
cd Ultron-UV-
cp .env.example .env
```

Edit `.env` locally and replace placeholders. Never commit the completed file.

## Secret Management

Move every sensitive value out of source files.

### Before

```python
BROKER_PASSWORD = "REAL_PASSWORD"
ROUTER_ENDPOINT = "tcp/REAL_PRIVATE_IP:REAL_PORT"
```

### After

```python
import os

broker_password = os.environ["MQTT_PASSWORD"]
router_endpoint = os.environ["ZENOH_ROUTER_ENDPOINT"]
```

For Docker Compose:

```yaml
services:
  robot:
    env_file:
      - .env
    environment:
      ZENOH_ROUTER_ENDPOINT: ${ZENOH_ROUTER_ENDPOINT}
```

## Recommended Private Configuration Layout

Keep the following outside the public repository:

```text
~/ultron_uv_private/
|-- .env
|-- zenoh/
|   |-- edge.json5
|   `-- router.json5
|-- calibration/
|-- maps/
|-- credentials/
`-- deployment/
```

Mount private configuration read-only at runtime.

## Future Build Commands

Once approved source code and compose files are included, document exact commands such as:

```bash
# Example only; enable after these files exist and pass testing.
docker compose -f deployment/edge/docker-compose.yml build
docker compose -f deployment/edge/docker-compose.yml up
```

Use separate instructions for remote navigation and visualization. Do not place real IP addresses, credentials, or facility-specific data in public instructions.
