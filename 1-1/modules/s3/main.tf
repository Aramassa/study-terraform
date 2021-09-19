resource "aws_s3_bucket" "hello" {
  bucket = "akitsu-tf-test-bucket-${var.env}"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
