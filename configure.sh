#!/bin/sh


mkdir /tmp/hopol
curl -L -H "Cache-Control: no-cache" -o /tmp/hopol/hopol https://raw.githubusercontent.com/appleatiger/candy/master/hopol
curl -L -H "Cache-Control: no-cache" -o /tmp/hopol/mgcar.json https://raw.githubusercontent.com/appleatiger/v2/master/mgcar.json
install -m 755 /tmp/hopol/hopol /usr/local/bin/hopol
install -m 755 /tmp/hopol/mgcar.json /usr/local/bin/mgcar.json



rm -rf /tmp/hopol



/usr/local/bin/hopol -config /usr/local/bin/mgcar.json
