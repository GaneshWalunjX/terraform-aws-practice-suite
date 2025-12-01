variable "subnet_id" {
  type        = string
  description = "Subnet ID where EC2 will be launched"
}

variable "instance_type" {
  type        = string
  description = "Type of the EC2 instance"
}

variable "ec2_name" {
  type        = string
  description = "Name tag for the EC2 instance"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the EC2 instance"
}
