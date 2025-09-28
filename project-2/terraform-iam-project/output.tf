output "user_name" {
  description = "IAM user name"
  value       = module.dev_user.user_name
}

output "user_arn" {
  description = "IAM user ARN"
  value       = module.dev_user.user_arn
}

output "group_name" {
  description = "IAM group name"
  value       = module.dev_group.group_name
}

output "group_arn" {
  description = "IAM group ARN"
  value       = module.dev_group.group_arn
}

output "role_name" {
  description = "IAM role name"
  value       = module.dev_role.role_name
}

output "role_arn" {
  description = "IAM role ARN"
  value       = module.dev_role.role_arn
}

output "policy_arn" {
  description = "IAM policy ARN"
  value       = module.s3_readonly_policy.policy_arn
}