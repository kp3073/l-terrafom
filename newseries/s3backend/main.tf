resource "aws_instance" "keyur" {
  ami           = data.aws_ami.image_id
  instance_type = var.instance_type
}


data "aws_ami" "image_id" {
  owners = [973714476881]
  filter {
    name   = "name"
    values = [Centos-8-DevOps-Practice]
  }
  filter {
    name   = "Virtualization type"
    values = [hvm]
  }
  filter {
    name   = "Root device type"
    values = [ebs]
  }
}