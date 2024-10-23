provider "aws" {
  region = var.region
}

resource "aws_iam_user" "iam_user" {
  name = var.user_name
  path = "/"
  force_destroy = true
}

resource "aws_iam_access_key" "user_access_key" {
  user = aws_iam_user.iam_user.name
}

resource "aws_iam_user_policy_attachment" "user_policy_attachment" {
  policy_arn = var.policy_arn
  user       = aws_iam_user.iam_user.name
}

output "user_name" {
  value = aws_iam_user.iam_user.name
}

output "access_key_id" {
  value = aws_iam_access_key.user_access_key.id
  sensitive = true
}

output "secret_access_key" {
  value = aws_iam_access_key.user_access_key.secret
  sensitive = true
}
