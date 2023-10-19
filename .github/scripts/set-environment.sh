#!/bin/bash

ssh $SSH_OPTIONS $EC2_INSTANCE 'echo "export HOST='${HOST}'" | tee ~/.env'
ssh $SSH_OPTIONS $EC2_INSTANCE 'echo "export PORT='${PORT}'" | tee -a ~/.env'
