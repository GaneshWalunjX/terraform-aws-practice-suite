terraform {
  backend "s3" {
    bucket                   = "ganesh-terraform-state"
    key                        = "day4/terraform.tfstate"
    region                   = "ap-south-1"
    profile                   = "ganesh-dev"
    dynamodb_table  = "terraform-lock-table"
  }
}
