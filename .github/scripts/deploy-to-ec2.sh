#!/bin/bash

ssh $SSH_OPTIONS $EC2_INSTANCE 'cd test-api && git pull && npm install || true'
