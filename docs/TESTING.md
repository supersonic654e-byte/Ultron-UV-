# Public Test Matrix

Do not replace pending entries with estimated or invented results.

| Test area | Method | Evidence to publish | Status |
|---|---|---|---|
| LiDAR data | Verify scan publication and stability | RViz screenshot and topic-rate summary | Pending public evidence |
| Depth sensing | Verify obstacle representation | Screenshot or recorded public-safe demo | Pending public evidence |
| Odometry | Straight-line and rotation trials | Plot with anonymized test environment | Pending public evidence |
| SLAM | Build a map in a controlled corridor-like area | Sanitized occupancy map | Pending public evidence |
| Navigation | Repeat waypoint trials | Success rate and failure notes | Pending public evidence |
| Emergency stop | Trigger during low-speed controlled test | Pass/fail record and video | Pending public evidence |
| Network loss | Disconnect remote communication | Confirm safe stop behavior | Pending public evidence |
| Command timeout | Stop velocity-command stream | Confirm safe stop behavior | Pending public evidence |
| UV-C interlock | Qualified controlled test only | Approved safety report | Not publicly validated |
| Human detection | Controlled approach tests | Detection and shutdown results | Not publicly validated |

## Publication rule

Publish measured results, test conditions, trial count, and known limitations. Never publish facility maps, real internal network information, private telemetry, or personally identifiable data.
