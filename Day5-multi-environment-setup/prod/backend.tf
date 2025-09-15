terraform {
  backend "s3" {
    bucket                  = "ganesh-terraform-state"
    key                       = "day5/prod/terraform.tfstate"
    region                  = "ap-south-1"
    profile                  = "ganesh-prod"
    dynamodb_table = "terraform-lock-table"
  }
}
