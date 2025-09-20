variable "alb_name" {
  description = "Name of the ALB"
  type        = string
}

variable "target_group_name" {
  description = "Name of the target group"
  type        = string
}

variable "alb_sg_id" {
  description = "Security group ID for the ALB"
  type        = string
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID for the target group"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}
