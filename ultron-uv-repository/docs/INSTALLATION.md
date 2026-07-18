# Installation and Run Guide

## Important Scope Note

This repository scaffold does not include unreviewed private source code or deployment configuration. Do not advertise a command as functional until the corresponding files have been added and tested.

## Recommended Platforms

### Edge computer

- NVIDIA Jetson Nano or approved replacement
- Linux host compatible with the selected JetPack/container setup
- Docker and Docker Compose
- USB access to the embedded controller, LiDAR, and depth camera

### Remote computer

- Ubuntu 22.04 or another validated ROS 2 Humble platform
- ROS 2 Humble
- Nav2
- SLAM Toolbox
- robot_localization
- RViz2
- Zenoh-compatible ROS 2 middleware

## Public Setup Workflow

```bash
git clone https://github.com/YOUR_GITHUB_USERNAME/ultron-uv.git
cd ultron-uv
cp .env.example .env
```

Edit `.env` locally and replace placeholders. Never commit the completed file.

## Secret Management

Move every sensitive value out of source files:

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

For ROS 2 launch files, read non-secret operating parameters from public YAML files and load secret or environment-specific values from environment variables or private mounted configuration.

## Recommended Private Configuration Layout

Keep the following outside the public repository:

```text
~/ultron_uv_private/
├── .env
├── zenoh/
│   ├── edge.json5
│   └── router.json5
├── calibration/
├── maps/
├── credentials/
└── deployment/
```

Mount these files read-only at runtime.

## Future Build Commands

Once approved source code and compose files are included, document exact commands such as:

```bash
# Example only; enable after these files exist and pass testing.
docker compose -f deployment/edge/docker-compose.yml build
docker compose -f deployment/edge/docker-compose.yml up
```

Use separate instructions for remote navigation and visualization. Do not place real IP addresses or credentials in the instructions.
