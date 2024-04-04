provider "aws" {
access_key = "AKIAXYKJE3BEQC5KZ6XE"
secret_key = "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"
region = "us-east-1"
}

resource "aws_instance" "Applied-DevOps-Project" {
ami = "ami-080e1f13689e07408"
instance_type = "t2.micro"
tags = {
    Name = "Applied-DevOps-Project"
  }
}
