#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a5138588-c713-4558-a0c9-1d2b87445d61"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

