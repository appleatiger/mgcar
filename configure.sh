#!/bin/sh


mkdir /tmp/hopol
curl -L -H "Cache-Control: no-cache" -o /tmp/hopol/hopol https://raw.githubusercontent.com/appleatiger/candy/master/hopol
install -m 755 /tmp/hopol/hopol /usr/local/bin/hopol
install -d /usr/local/etc/hopol
cat << EOF > /usr/local/etc/hopol/config.json
{
          "log": {
            "access": "none",
            "loglevel": "none"
          },
          "inbounds": [
            {
              "port": $PORT,
              "protocol": "vless",
              "settings": {
                "decryption": "none",
                "clients": [
                  {
                    "id": "$UUID"
                  }
                ]
              },
              "streamSettings": {
                "network":"ws"
              }
            }
          ],
          "outbounds": [
            {
              "protocol": "freedom"
            }
          ]
        }
EOF

rm -rf /tmp/hopol



/usr/local/bin/hopol -config /usr/local/etc/hopol/config.json
