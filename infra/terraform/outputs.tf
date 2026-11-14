output "vpc_id" {
  description = "ID of the application VPC."
  value       = aws_vpc.application.id
}

output "public_subnet_ids" {
  description = "Public subnet IDs, one in each of the selected Availability Zones."
  value       = [for az in local.selected_azs : aws_subnet.public[az].id]
}

output "availability_zones" {
  description = "The two Availability Zones used by the public subnets."
  value       = local.selected_azs
}

output "app_url" {
  description = "Public HTTP URL for the Next.js application."
  value       = "http://${aws_lb.nextjs.dns_name}"
}

output "ecr_repository_url" {
  description = "URL of the application's ECR repository."
  value       = aws_ecr_repository.nextjs.repository_url
}
