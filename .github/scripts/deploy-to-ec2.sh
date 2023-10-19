#!/bin/bash

ssh -o StrictHostKeyChecking=no -i security-key.pem $EC2_INSTANCE 'cd test-api && git pull && npm install || true'
