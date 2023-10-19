#!/bin/bash

ssh $SSH_OPTIONS $EC2_INSTANCE 'echo "export HOST='${HOST}'" >>~/.bashrc'
ssh $SSH_OPTIONS $EC2_INSTANCE 'echo "export PORT='${PORT}'" >>~/.bashrc'
