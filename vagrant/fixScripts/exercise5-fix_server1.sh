#!/bin/bash

ssh-keygen -f $HOME/.ssh/id_rsa -t rsa -N ''
ssh-copy-id server2

