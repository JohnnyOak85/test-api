#!/bin/bash
scp -v -o StrictHostKeyChecking=no -i security-key.pem $GITHUB_WORKSPACE/test-api.service $EC2_INSTANCE:/tmp/
ssh -o StrictHostKeyChecking=no -i security-key.pem $EC2_INSTANCE 'sudo mv /tmp/test-api.service /etc/systemd/system/'
