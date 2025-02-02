output "aws_account_id" {
  description = "IAM AWS account id"
  value       = local.aws_account_id
}

output "this_group_users" {
  description = "List of IAM users in IAM group"
  value       = distinct(flatten(aws_iam_user_group_membership.this[*].user))
}

output "this_group_name" {
  description = "IAM group name"
  value       = element(concat(aws_iam_group.this.*.name, [var.name]), 0)
}

