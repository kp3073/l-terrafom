### creating ssh-key
#
#resource "aws_key_pair" "id_key" {
#  key_name   = "id_key"
#  public_key = file("${path.module}/id.key.pub")
#}

## creating security group
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  }

resource "aws_security_group" "example" {
# ... other configuration ...

egress {
from_port = 443
to_port = 443
protocol = "tcp"
cidr_blocks      = ["0.0.0.0/0"]
}
}
### creating EC2
#
#resource "aws_instance" "devops" {
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t2.micro"
#  key_name = aws_key_pair.id_key.key_name
#}
#
