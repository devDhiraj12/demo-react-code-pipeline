#!/bin/bash
# Install Node.js and serve if not already installed
if ! [ -x "$(command -v node)" ]; then
  curl -fsSL https://rpm.nodesource.com/setup_16.x | sudo bash -
  sudo yum install -y nodejs
fi
if ! [ -x "$(command -v serve)" ]; then
  sudo npm install -g serve
fi
cd /var/www/html
 serve -s build -l 80 >/dev/null 2>&1 &