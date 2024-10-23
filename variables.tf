variable "region" {
  description = "The region, where the resources are created"
  type = "string"
  default = "us-east-1"
}

variable "user_name" {
  description = "IAM username"
  type = "string"
}

variable "policy_arn" {
  description = "ARN policy for user"
  type = "string"
}