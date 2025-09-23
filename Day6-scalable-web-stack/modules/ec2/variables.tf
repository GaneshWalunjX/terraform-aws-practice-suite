variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type            = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type            = string
}

variable "subnet_id" {
  description = "Subnet ID to launch the EC2 instance"
  type            = string
}

variable "ec2_sg_id" {
  description = "Security group ID for EC2"
  type            = string
}

variable "key_name" {
  description = "SSH key name for EC2 access"
  type            = string
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type            = string
}

variable "environment" {
  description = "Environment name"
  type            = string
}

variable "target_group_arn" {
  description = "ARN of the ALB target group"
  type            = string
}
