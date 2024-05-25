output "arn" {
  description = "Amazon Resource Name (ARN) of the launch template"
  value       = aws_launch_template.template.arn
}

output "id" {
  description = "The ID of the launch template"
  value       = aws_launch_template.template.id
}

output "latest_version" {
  description = "The latest version of the launch template."
  value       = aws_launch_template.template.latest_version
}