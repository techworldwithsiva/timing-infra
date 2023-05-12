output "vpc_id" {
  value = module.vpc.vpc_id
}

output "rds_security_group_id" {
  value = local.rds_security_group_id
}