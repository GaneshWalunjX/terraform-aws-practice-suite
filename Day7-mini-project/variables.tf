variable "region" {
  description = "AWS region"
  type            = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type            = string
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type            = string
}

variable "subnet_name" {
  description = "Name tag for the subnet"
  type            = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type            = string
}

variable "ec2_name" {
  description = "Name tag for EC2"
  type            = string
}

variable "ami_id" {
  type            = string
  description = "AMI ID for EC2 instance"
}


variable "bucket_name" {
  description = "Name of the S3 bucket"
  type            = string
}

variable "s3_tags" {
  description = "Tags for the S3 bucket"
  type            = map(string)
  default        = {}
}

variable "table_name" {
  description = "DynamoDB table name"
  type            = string
}

variable "hash_key" {
  description = "Hash key of DynamoDB table"
  type            = string
}

variable "dynamodb_tags" {
  description = "Tags for DynamoDB table"
  type            = map(string)
  default        = {}
}
