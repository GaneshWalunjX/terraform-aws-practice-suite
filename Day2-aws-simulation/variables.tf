variable "aws_region" {
  description = "AWS region to deploy resources"
  type            = string
}

variable "aws_profile" {
  description = "AWS CLI profile name"
  type            = string
}

variable "instance_type" {
  description  = "EC2 instance type"
  type             = string
}

variable "ami_id"{
  description   = "AMI ID for EC2 instance"
  type              = string
}