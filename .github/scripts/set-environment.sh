#!/bin/bash

ssh $SSH_OPTIONS $EC2_INSTANCE 'echo "HOST='${HOST}'" | tee ~/.env'
ssh $SSH_OPTIONS $EC2_INSTANCE 'echo "PORT='${PORT}'" | tee -a ~/.env'
