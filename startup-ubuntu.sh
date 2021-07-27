#!/bin/bash
apt update -y
apt install net-tools git ansible -y
ssh-keygen -t rsa -N "" -f "$HOME/.ssh/id_rsa"