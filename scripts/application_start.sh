#!/bin/bash

#give permission for everything in the nest-app directory
sudo chmod -R 777 /home/ec2-user/nest-app

#navigate into our working directory where we have all our github files
cd /home/ec2-user/nest-app

#add npm and node to path
export NVM_DIR="$HOME/.nvm"	
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm	
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)

#install node modules
npm install

#start our node app in the background
npm run build
pm2 start dist/main.js --name "HelloWorld"
#pm2 --name HelloWorld start npm -- run start:prod
#pm2 start npm --name "my-app-name" -- run "start:prod"
#pm2 start npm --name "app name" -- start
#node app.js > app.out.log 2> app.err.log < /dev/null & 