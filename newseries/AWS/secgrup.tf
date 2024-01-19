## creating security group
resource "aws_security_group" "allow_pots" {
  name        = "allow_ports"
  description = "Allow PORTS inbound traffic and all outbound traffic"

ingress {

      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}