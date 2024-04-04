provider "aws" {
access_key = "###"
secret_key = "###"
region = "us-east-1"
}

resource "aws_instance" "Applied-DevOps-Project" {
ami = "ami-080e1f13689e07408"
instance_type = "t2.micro"
tags = {
    Name = "Applied-DevOps-Project"
  }
}
