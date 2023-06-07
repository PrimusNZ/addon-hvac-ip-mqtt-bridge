# hvac_ip_mqtt_bridge

## About

A bridge to connect between ip-enabled HVAC units and mqtt (to be connected to HomeAssistant etc)
Currently supported models:

- Samsung 2878

## Installation

The installation of this add-on is pretty straightforward and not different in
comparison to installing any other Hass.io add-on.

1. [Add my Hass.io add-ons repository][repository] to your Hass.io instance.
1. Install this add-on.
1. Click the `Save` button to store your configuration.
1. Start the add-on.
1. Check the logs of the add-on to see if everything went well.
1. Carefully configure the add-on to your preferences, see the official documentation for for that.


## Configuration

Corresponding config entry in Home Assistant climate.yaml:

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

[repository]: https://github.com/PrimusNZ/hassio-addons