data "aws_ami" "centos" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["973714476881"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.centos.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

output "aws_id" {
  value = "${data.aws_ami.centos.id}"
}