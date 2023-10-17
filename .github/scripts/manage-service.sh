#!/bin/bash
is_enabled=$(ssh -o StrictHostKeyChecking=no -i security-key.pem $EC2_INSTANCE 'sudo systemctl is-enabled test-api.service' || true)
if [ "$is_enabled" != "enabled" ]; then
    ssh -o StrictHostKeyChecking=no -i security-key.pem $EC2_INSTANCE 'sudo systemctl enable test-api.service'
    ssh -o StrictHostKeyChecking=no -i security-key.pem $EC2_INSTANCE 'sudo systemctl start test-api.service'
else
    ssh -o StrictHostKeyChecking=no -i security-key.pem $EC2_INSTANCE 'sudo systemctl restart test-api.service'
fi
