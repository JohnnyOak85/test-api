#!/bin/bash

ssh $SSH_OPTIONS $EC2_INSTANCE 'echo "export HOST='${HOST}'" | tee ~/.profile'
ssh $SSH_OPTIONS $EC2_INSTANCE 'echo "export PORT='${PORT}'" | tee -a ~/.profile'
