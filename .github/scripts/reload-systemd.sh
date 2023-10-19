#!/bin/bash

ssh $SSH_OPTIONS $EC2_INSTANCE 'sudo systemctl daemon-reload'
