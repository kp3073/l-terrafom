
### creating EC2

resource "aws_instance" "keyur" {
  ami                    = var.image_id
  instance_type          = var.machine_type
  vpc_security_group_ids = ["${aws_security_group.allow_pots.id}"]
  key_name               = aws_key_pair.key.key_name
  tags = {
    name = "TEST"
  }
  user_data = file("${path.module}/script.sh")
}

