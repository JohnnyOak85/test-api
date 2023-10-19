#!/bin/bash

scp -v $SSH_OPTIONS $GITHUB_WORKSPACE/.github/systemd/$SERVICE $EC2_INSTANCE:/tmp/
ssh $SSH_OPTIONS $EC2_INSTANCE 'sudo mv /tmp/'$SERVICE' /etc/systemd/system/'
