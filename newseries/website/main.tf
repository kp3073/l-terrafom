#create a s3 bucket
resource "aws_s3_bucket" "bucketname" {
  bucket = "${var.mybucketname}"
}
