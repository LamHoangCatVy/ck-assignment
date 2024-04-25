#!/bin/bash
#VM Startup Script
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo systemctl enable docker --now
sudo systemctl enable containerd.service --now
sudo usermod -a -G docker ec2-user
sudo docker pull bjwrd/app.py
sudo docker run -d bjwrd/app.py 

# Display text to test instance
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>$(hostname -f)</h1>" > /var/www/html/index.html
