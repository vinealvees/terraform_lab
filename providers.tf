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
    default_tags {
      tags = "${var.tags-padrao}"
    }
}