#!/bin/bash
ssh -o StrictHostKeyChecking=no -i security-key.pem $EC2_INSTANCE 'sudo chown ec2-user:ec2-user /etc/systemd/system/'
ssh -o StrictHostKeyChecking=no -i security-key.pem $EC2_INSTANCE 'sudo chmod 755 /etc/systemd/system/'
