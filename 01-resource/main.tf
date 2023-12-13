resource "aws_instance" "web" {
  ami           ="ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}


resource "aws_route53_record" "www" {
  zone_id = Z01410302C88NUPGSJO5X
  name    = "test.aligntune.com"
  type    = "A"
  ttl     = 300
  records = [aws_instance.web.private_ip]
}