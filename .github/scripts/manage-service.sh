#!/bin/bash

is_enabled=$(ssh $SSH_OPTIONS $EC2_INSTANCE 'sudo systemctl is-enabled '$SERVICE || true)
if [ "$is_enabled" != "enabled" ]; then
    ssh $SSH_OPTIONS $EC2_INSTANCE 'sudo systemctl enable '$SERVICE
    ssh $SSH_OPTIONS $EC2_INSTANCE 'sudo systemctl start '$SERVICE
else
    ssh $SSH_OPTIONS $EC2_INSTANCE 'sudo systemctl restart '$SERVICE
fi
