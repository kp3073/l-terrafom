### creating ssh-key
#
resource "aws_key_pair" "id_key" {
  key_name   = "id_key"
  public_key = file("${path.module}/id.key.pub")
}

## creating security group
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  dynamic "ingress" {
    for_each = [22,443,8080,3306,27017]
    iterator = new
    content {
      from_port   = new.value
      to_port     = new.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}

### creating EC2

resource "aws_instance" "devops" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  security_groups = "aws_security_group.allow_tls.id"
  key_name = aws_key_pair.id_key.key_name
}

