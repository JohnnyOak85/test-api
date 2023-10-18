#!/bin/bash

# Set environment variables
ssh $SSH_OPTIONS $EC2_INSTANCE 'echo "export HOST=${HOST}" >>~/.bashrc'
ssh $SSH_OPTIONS $EC2_INSTANCE 'echo "export PORT=${PORT}" >>~/.bashrc'

# Reload the shell to apply changes
ssh $SSH_OPTIONS $EC2_INSTANCE 'source ~/.bashrc'
