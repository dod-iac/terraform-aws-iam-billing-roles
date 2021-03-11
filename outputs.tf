
output "billing_full_access_role_arn" {
  description = "The Amazon Resource Name (ARN) of the billing-full-access role."
  value       = aws_iam_role.billing_full_access.arn
}

output "billing_view_access_role_arn" {
  description = "The Amazon Resource Name (ARN) of the billing-view-access role."
  value       = aws_iam_role.billing_view_access.arn
}

output "billing_full_access_group_arn" {
  description = "The Amazon Resource Name (ARN) of the billing-full-access group."
  value       = aws_iam_group.billing_full_access.arn
}

output "billing_view_access_group_arn" {
  description = "The Amazon Resource Name (ARN) of the billing-view-access group."
  value       = aws_iam_group.billing_view_access.arn
}