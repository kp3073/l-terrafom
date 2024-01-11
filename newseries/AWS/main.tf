provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAYYSPFTVLB2LSGO63"
  secret_key = "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"
}
resource "aws_key_pair" "id_rsa" {
  key_name   = "id_rsa"
  public_key = "file(${path.module}/id_rsa)"
}

