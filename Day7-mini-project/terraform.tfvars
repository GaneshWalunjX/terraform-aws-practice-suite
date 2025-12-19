region             = "ap-south-1"

vpc_cidr          = "10.0.0.0/16"
vpc_name       = "my-vpc"
subnet_name  = "my-public-subnet"

instance_type = "t2.micro"
ec2_name       = "my-ec2-instance"
ami_id             = "ami-0e6329e222e662a52"

bucket_name  = "my-terraform-demo-bucket-12345"

s3_tags = {
  Project   = "TerraformDemo"
  Owner   = "User"
}

table_name = "MyDemoTable"
hash_key     = "id"

dynamodb_tags = {
  Environment    = "Dev"
  Project             = "TerraformDemo"
}
