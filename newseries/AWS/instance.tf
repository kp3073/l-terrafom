
### creating EC2

resource "aws_instance" "keyur" {
  ami                    = var.image_id
  instance_type          = var.machine_type
  vpc_security_group_ids = ["${aws_security_group.allow_pots.id}"]
  key_name               = aws_key_pair.key.key_name
  tags                   = {
    name = "TEST"
  }
  user_data = file("${path.module}/script.sh")

  connection {
    type        = "ssh"
    user        = "centos"
    private_key = file("${path.module}/id_rsa")
    host        = self.public_ip
  }

  provisioner "file" {
    source      = "readme.md"
    destination = "/tmp/readme.md"
  }
  provisioner "file" {
    content     = "THIS IS TEST CONTANT"
    destination = "/tmp/new.md"
  }

  provisioner  "local-exec" {
  command = "ifconfig"
}

}


