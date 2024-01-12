resource "aws_key_pair" "id_rsa" {
  key_name   = "id_rsa"
  public_key = file("${path.module}/id_rsa.pub")
}

resource "aws_instance" "devops" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  key_name = aws_key_pair.id_rsa.key_name
}

