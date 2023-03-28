output "vpc_id" {
  description = "VPC ID:::"
  value       = try(module.vpc.vpc_id, "Could not get VPC ID")
}

output "private_subnets" {
  description = "List of Private Subnets' ID's"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "List of Public Subnets's ID's"
  value       = module.vpc.public_subnets
}

output "public_route_table_ids" {
  description = "List of IDs of public route tables"
  value       = module.vpc.public_route_table_ids
}

output "private_route_table_ids" {
  description = "List of IDs of private route tables"
  value       = module.vpc.private_route_table_ids
}
