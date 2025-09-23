variable "bucket_name" {
  description = "Name of the S3 bucket"
  type            = string
}

variable "enable_versioning" {
  description = "Enable versioning for the bucket"
  type            = bool
}

variable "environment" {
  description = "Environment name"
  type            = string
}
