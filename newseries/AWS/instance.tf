
### creating EC2

resource "aws_instance" "keyur" {
  ami                    = var.image_id
  instance_type          = var.machine_type
  vpc_security_group_ids = ["${aws_security_group.allow_pots.id}"]
  key_name               = aws_key_pair.key.key_name
  tags = {
    description = "TEST"
  }
  user_data = <<-EOF
  #!/bin/bash
  sudo dnf install nginx -y
  sudo systemctl start nginx
  EOF
}

