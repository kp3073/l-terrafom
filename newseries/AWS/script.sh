#!/bin/bash
sudo dnf install nginx -y
sudo systemctl start nginx
echo "Hello Keyur" >/usr/share/nginx/html/index.html
