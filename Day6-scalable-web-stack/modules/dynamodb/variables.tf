variable "table_name" {
  description = "Name of the DynamoDB table"
  type            = string
}

variable "hash_key" {
  description = "Primary key for the table"
  type            = string
}

variable "environment" {
  description = "Environment name"
  type            = string
}
