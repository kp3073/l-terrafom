resource "aws_instance" "frontend1" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0fe6f5f4a7cf08436"]

  tags = {
    Name = "frontend1"
  }
}

resource "aws_route53_record" "frontend1" {
  zone_id = "Z01410302C88NUPGSJO5X"
  name    = "frontend1.aligntune.com"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend1.private_ip]
}

resource "aws_instance" "backend1" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0fe6f5f4a7cf08436"]

  tags = {
    Name = "backend1"
  }
}

resource "aws_route53_record" "backend1" {
  zone_id = "Z01410302C88NUPGSJO5X"
  name    = "backend1.aligntune.com"
  type    = "A"
  ttl     = 30
  records = [aws_instance.backend1.private_ip]
}

resource "aws_instance" "mysql1" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0fe6f5f4a7cf08436"]

  tags = {
    Name = "mysql1"
  }
}

resource "aws_route53_record" "mysql1" {
  zone_id = "Z01410302C88NUPGSJO5X"
  name    = "mysql1.aligntune.com"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql1.private_ip]
}