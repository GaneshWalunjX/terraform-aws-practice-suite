variable "vpc_cidr" {
  type            = string
  description = "CIDR block for the VPC"
}

variable "vpc_name" {
  type            = string
  description = "Name tag for the VPC"
}

variable "environment" {
  type            = string
  description = "Environment name (Dev, Staging, Prod)"
}

variable "public_subnet_cidrs" {
  type            = list(string)
  description = "List of CIDRs for public subnets"
}

variable "private_subnet_cidrs" {
  type            = list(string)
  description = "List of CIDRs for private subnets"
}

variable "azs" {
  type            = list(string)
  description = "Availability zones for subnets"
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type            = string
}

variable "aws_profile" {
  description = "AWS CLI profile name"
  type            = string
}
