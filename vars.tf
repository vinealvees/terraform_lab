variable "aws-region" {
    type = string
    default = "us-east-2"
  
}

variable "tags-padrao" {
    type = map
    default = {
        "projeto" = "terraform-lab"
        "departamento" = "estudos-terraform"
        "billing" = "vinicius-account"
    }
  
}

variable "instance-type" {
    type = string
    default = "t2.micro"
  
}

variable "instance-nbr" {
    type = string
    default = "1"
      
}

variable "key-name" {
    type = string
    default = "vinicius-pc.pem"
  
}

variable "ebs-crypto" {
    type = string
    default = true
  
}

variable "volume-type" {
    type = string
    default = "gp2"
  
}

variable "volume-size" {
    type = string
    default = "8"
  
}

variable "project-name" {
    type = string
    default = "XPTO-TOOL"
  
}