variable "table_name" {
  type            = string
  description = "DynamoDB table name"
}

variable "hash_key" {
  type            = string
  description = "Primary hash key for the DynamoDB table"
}

variable "tags" {
  type            = map(string)
  description = "Tags for the DynamoDB table"
  default        = {}
}
