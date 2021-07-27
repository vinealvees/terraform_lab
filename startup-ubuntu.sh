#!/bin/bash
apt update -y
apt install net-tools git ansible python3-pip -y
pip3 install botocore boto3
ssh-keygen -t rsa -N "" -f "$HOME/.ssh/id_rsa"