output "aws_account_id" {
  description = "The AWS Account ID number of the account that owns or contains the calling entity."
  value       = data.aws_caller_identity.current.account_id
}

output "aws_caller_arn" {
  description = "The AWS ARN associated with the calling entity."
  value       = data.aws_caller_identity.current.arn
}

output "aws_caller_user_id" {
  description = "The unique identifier of the calling entity."
  value       = data.aws_caller_identity.current.user_id
}

output "arn" {
  description = "Amazon Resource Name (ARN) of the launch template"
  value       = module.template.arn
}

output "id" {
  description = "The ID of the launch template"
  value       = module.template.id
}