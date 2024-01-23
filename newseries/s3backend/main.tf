terraform {
  backend "s3" {
    bucket = "terraforms2578"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "keyur" {
  ami           = "${data.aws_ami.centos.id}"
  instance_type = var.instance_type
}


data "aws_ami" "centos" {
  owners = [973714476881]
  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }
  filter {
    name   = "Virtualization type"
    values = ["hvm"]
  }
  filter {
    name   = "Root device type"
    values = ["ebs"]
  }
}