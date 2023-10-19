#!/bin/bash

ssh $SSH_OPTIONS $EC2_INSTANCE 'sudo chown '$EC2_USER':'$EC2_USER' /etc/systemd/system/'
ssh $SSH_OPTIONS $EC2_INSTANCE 'sudo chmod 755 /etc/systemd/system/'
