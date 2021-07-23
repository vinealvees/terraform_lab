terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "3.51.0"
        }
    }
}

provider "aws" {
    region = "${var.aws-region}"
    access_key = "${var.aws-user}"
    secret_key = "${var.aws-pass}"
    default_tags {
      tags = "${var.tags-padrao}"
    }
}