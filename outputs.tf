
output "aws_region" {
  description = "AWS deployment region"
  value       = var.aws_region
}

output "project_name" {
  description = "Project name"
  value       = local.common_name
}

output "environment" {
  description = "Deployment environment"
  value       = var.environment
}

output "vpc_cidr" {
  description = "VPC CIDR block"
  value       = var.vpc_cidr
}
