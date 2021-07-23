data "aws_vpcs" "vpc-default" {
}

data "aws_security_groups" "sg-default" {
    tags = {
        Name = "sg_terraform"
    }
}