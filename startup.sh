#!/bin/bash
chmod 777 /etc/nginx/conf.d/default.conf
sed -i "s/__LISTEN__/$LISTEN/g" /etc/nginx/conf.d/default.conf;
sed -i "s/__SERVER__/$SERVER/g" /etc/nginx/conf.d/default.conf;

sed -i "s/__PROTOCOL__/$PROTOCOL/g" /etc/nginx/conf.d/default.conf;
sed -i "s/__HOST__/$HOST/g" /etc/nginx/conf.d/default.conf;
sed -i "s/__PORT__/$PORT/g" /etc/nginx/conf.d/default.conf;