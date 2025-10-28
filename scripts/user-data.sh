#!/bin/bash
# Install necessary packages
sudo yum update -y
sudo yum install -y python3

# Copy the CPU stress script to the appropriate directory
aws s3 cp s3://<your-bucket-name>/cpu-stress-script.py /home/ec2-user/cpu-stress-script.py

# Run the CPU stress script in the background
nohup python3 /home/ec2-user/cpu-stress-script.py &> /home/ec2-user/cpu-stress.log &