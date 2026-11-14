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
