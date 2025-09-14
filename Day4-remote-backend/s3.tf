resource "aws_s3_bucket" "terraform_state" {
  bucket = "ganesh-terraform-state"
  acl       = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name            = "Terraform State Bucket"
    Environment = "Dev"
  }
}
