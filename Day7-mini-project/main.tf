module "ec2" {
  source            = "./modules/ec2"
  subnet_id       = module.vpc.public_subnet_id
  instance_type = var.instance_type
  ec2_name       = var.ec2_name
  ami_id            = var.ami_id
}

module "vpc" {
  source            = "./modules/vpc"
  cidr_block      = var.vpc_cidr
  vpc_name      = var.vpc_name
  subnet_name = var.subnet_name
}


module "s3" {
  source            = "./modules/s3"
  bucket_name = var.bucket_name
  tags                = var.s3_tags
}

module "dynamodb" {
  source         = "./modules/dynamodb"
  table_name = var.table_name
  hash_key     = var.hash_key
  tags             = var.dynamodb_tags
}
