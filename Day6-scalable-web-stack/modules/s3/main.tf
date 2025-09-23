resource "aws_s3_bucket" "app_bucket" {
  bucket = var.bucket_name
  acl       = "private"

  versioning {
    enabled = var.enable_versioning
  }

  tags = {
    Name            = var.bucket_name
    Environment = var.environment
  }
}
