resource "aws_key_pair" "id_key" {
  key_name   = "id_key"
  public_key = file("${path.module}/id.key.pub")
}

resource "aws_instance" "devops" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  key_name = aws_key_pair.id_key.key_name
}

