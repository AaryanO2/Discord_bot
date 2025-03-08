#!/bin/bash
yum update -y
yum install -y docker git
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user

git clone https://github.com/AaryanO2/Discord_bot.git /home/ec2-user/app

cd /home/ec2-user/app

docker build -t my-app .

docker run -d -p 80:80 my-app
