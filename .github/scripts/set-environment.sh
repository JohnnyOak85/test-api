#!/bin/bash

# Set environment variables
ssh $SSH_OPTIONS $EC2_INSTANCE 'export HOST='${HOST}
ssh $SSH_OPTIONS $EC2_INSTANCE 'export PORT='${PORT}
