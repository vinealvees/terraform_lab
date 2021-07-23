#!/bin/bash
yum update -y
yum install epel-release
yum update -y
yum install htop net-tools ansible -y
#amazon-linux-extras install ansible2