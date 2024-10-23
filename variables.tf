variable "aws_access_key_id" {
  description = "AWS Access Key ID"
  type = string
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access Key"
  type = string
}

variable "region" {
  description = "The region, where the resources are created"
  type = string
  default = "us-east-1"
}

variable "user_name" {
  description = "IAM username"
  type = string
}

variable "policy_arn" {
  description = "ARN policy for user1"
  type = string
}