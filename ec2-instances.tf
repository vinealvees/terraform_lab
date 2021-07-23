data "aws_ami" "ami-default" {
    owners = ["amazon"]
    most_recent = true
    name_regex = "^amzn2-ami-hvm-2.0.*"  
}

resource "aws_instance" "xpto-instance" {
    ami = data.aws_ami.ami-default.id
    instance_type = "${var.instance-type}"
    count = "${var.instance-nbr}"
    security_groups = data.aws_security_groups.sg-default.ids
    user_data = "${file("startup.sh")}"
    key_name = "${var.key-name}"
    root_block_device {
      encrypted = "${var.ebs-crypto}"
      volume_type = "${var.volume-type}"
      volume_size = "${var.volume-size}"
    }

    tags = {
      "Name" = "ATF-${var.project-name}-${count.index}"
      "Tipo" = "EC2"
    }
    volume_tags = {
      "Name" = "ATF-${var.project-name}-${count.index}"
      "Tipo" = "EBS"
    }
}