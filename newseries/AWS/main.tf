
#### creating ssh-key
resource "aws_key_pair" "key" {
  key_name   = "key"
  public_key = file("${path.module}/id_rsa.pub")
}

## creating security group
resource "aws_security_group" "allow_pots" {
  name        = "allow_ports"
  description = "Allow PORTS inbound traffic and all outbound traffic"

  dynamic "ingress" {
    for_each = [22, 443, 8080, 3306, 27017]
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

resource "aws_instance" "hi" {
  ami                    = ami-03265a0778a880afb
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["${aws_security_group.allow_pots.id}"]
  key_name               = aws_key_pair.key.key_name

}

