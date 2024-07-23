[12:19 pm] Sudarshan Jadhav
#!/bin/bash
# Install Node.js and serve if not already installed
if ! [ -x "$(command -v node)" ]; then
  curl -fsSL https://rpm.nodesource.com/setup_16.x | sudo bash -
  sudo yum install -y nodejs && sudo npm install -g npm@10.8.2
fi
if ! [ -x "$(command -v serve)" ]; then
  sudo npm install -g serve 
fi
cd /app
nohup serve -s build -l 8081 &
 
 