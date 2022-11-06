#!/bin/bash
cd /var/www/fcn-api-ms/
sudo pm2 start auth/src/index.js --name "auth"
sudo pm2 start gateway/src/index.js --name "gateway"
sudo pm2 start user/src/index.js --name "user"
sudo pm2 start video/src/index.js --name "video"