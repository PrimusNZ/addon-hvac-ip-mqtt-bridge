#!/usr/bin/with-contenv bashio
set -e

MQTT_HOST=$(bashio::services mqtt "host")
MQTT_USER=$(bashio::services mqtt "username")
MQTT_PASSWORD=$(bashio::services mqtt "password")

ACName=$(bashio::config name)
ACModel=$(bashio::config model)
ACIP=$(bashio::config ip)
ACTopic=$(bashio::config mqtt_prefix)
ACDuid=$(bashio::config duid)
ACToken=$(bashio::config auth_token)

cat > /ac_config.yaml <<EOF
mqtt:
  host: $MQTT_HOST
  username: $MQTT_USER
  password: $MQTT_PASSWORD
devices:
  - name: "$ACName"
    model: "$ACModel"
    host: "$ACIP"
    mqtt_prefix: "$ACTopic"
    duid: "$ACDuid"
    auth_token: "$ACToken"
EOF

exec /bridge --config_file=/ac_config.yaml < /dev/null
