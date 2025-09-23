aws_region                = "ap-south-1"
aws_profile                = "ganesh-prod"

ami_id                        = "ami-00ca32bbc84273381"
instance_type             = "t2.micro"
subnet_id                   = "will-be-overridden-by-module.vpc.public_subnet_ids[0]"
ec2_sg_id                   = "sg-xxxxxxxx"
key_name                  = "ec2-key"
instance_name          = "day6-ec2"


vpc_cidr                     = "10.0.0.0/16"
vpc_name                  = "day6-vpc"
environment              = "Prod"
public_subnet_cidrs   = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs  = ["10.0.3.0/24", "10.0.4.0/24"]
azs                              = ["ap-south-1a", "ap-south-1b"]

bucket_name             = "day6-prod-assets-bucket"
enable_versioning     = true

table_name                = "day6-prod-config-table"
hash_key                    = "config_id"
