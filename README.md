# hvac_ip_mqtt_bridge

A bridge to connect between ip-enabled HVAC units and mqtt (to be connected to HomeAssistant etc)
Currently supported models:

- Samsung 2878

## Corresponding config entry in Home Assistant climate.yaml:

```yaml
- platform: mqtt
  name: "My Air Conditioner"
  unique_id: "climate.my_ac"
  power_command_topic: "iphvac/my_ac/power/set"
  mode_state_topic: "iphvac/my_ac/mode/state"
  mode_command_topic: "iphvac/my_ac/mode/set"
  action_topic: "iphvac/my_ac/action"
  fan_mode_state_topic: "iphvac/my_ac/fan_mode/state"
  fan_mode_command_topic: "iphvac/samsunagc_mqtt/fan_mode/set"
  temperature_state_topic: "iphvac/my_ac/temperature/state"
  temperature_command_topic: "iphvac/my_ac/temperature/set"
  current_temperature_topic: "iphvac/my_ac/current_temperature/state"
  swing_mode_state_topic: "iphvac/my_ac/swing_mode/state"
  swing_mode_command_topic: "iphvac/my_ac/swing_mode/set"
  swing_modes:
    - "Fixed"
    - "SwingLR"
    - "SwingUD"
    - "Rotation"
  precision: 0.1
  retain: false
  initial: 23
  device:
    manufacturer: Samsung
    identifiers: ["samsungac_my_ac"]
```
