#!/bin/bash

if [ -z "$NODE_ENV" ]; then
    export NODE_ENV=development
fi

cd /var/www/codewithsravan

pm2 start -x server.js --name="codewithsravan" --no-daemon --watch