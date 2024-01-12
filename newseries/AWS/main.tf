provider "aws" {
  region     = "us-east-1"
  access_key = "AKIARR4IXZEDVMBVACJT"
  secret_key = "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"
}
resource "aws_key_pair" "id_rsa" {
  key_name   = "id_rsa"
  public_key = file("${path.module}/id_rsa.pub")
}

