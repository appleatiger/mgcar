#!/bin/sh


mkdir /tmp/hopol
curl -L -H "Cache-Control: no-cache" -o /tmp/hopol/hopol https://raw.githubusercontent.com/appleatiger/candy/master/hopol
install -m 755 /tmp/hopol/hopol /usr/local/bin/hopol



rm -rf /tmp/hopol



/usr/local/bin/hopol -config=https://raw.githubusercontent.com/appleatiger/v2/master/vl.json
