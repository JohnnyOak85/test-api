#!/bin/bash
ssh -o StrictHostKeyChecking=no -i security-key.pem $EC2_INSTANCE 'sudo systemctl daemon-reload'
