#!/bin/bash

ssh $SSH_OPTIONS $EC2_INSTANCE 'source ~/.profile || true'
