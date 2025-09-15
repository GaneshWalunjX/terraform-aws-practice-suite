terraform {
  backend "s3" {
    bucket                  = "ganesh-terraform-state"
    key                       = "day5/staging/terraform.tfstate"
    region                  = "ap-south-1"
    profile                  = "ganesh-staging"
    dynamodb_table = "terraform-lock-table"
  }
}
