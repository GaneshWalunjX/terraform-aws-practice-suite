terraform {
  backend "s3" {
    bucket                  = "ganesh-terraform-state"
    key                       = "day5/dev/terraform.tfstate"
    region                  = "ap-south-1"
    profile                  = "ganesh-dev"
    dynamodb_table = "terraform-lock-table"
  }
}
