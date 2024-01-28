#create a s3 bucket
resource "aws_s3_bucket" "mywebsite" {
  bucket = var.mybucketname
}
