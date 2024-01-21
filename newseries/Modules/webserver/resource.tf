resource "aws_instance" "web" {
  ami           = "ami-1234567890"
  instance_type = "t2-micro"
}