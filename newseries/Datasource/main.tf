##create EC2 instance
#resource "aws_instance" "web" {
#  ami           = "${data.aws_ami.centos.id}"
#  instance_type = "t3.micro"
#
#  tags = {
#    Name = "HelloWorld"
#  }

data "aws_ami" "centos" {
  most_recent = true
  owners       = ["973714476881"]


  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }

  filter {
    name   = "Root device type"
    values = ["EBS"]
  }

  filter {
    name   = "Virtualization type"
    values = ["hvm"]
  }

  output aws_ami {
    value = data.aws_ami.centos.id
  }


}