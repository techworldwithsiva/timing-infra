module "rds_sg"{
    source = "../terraform-modules-security-group"
    vpc_id = local.vpc_id
    security_group_name = var.rds_security_group_name
    security_group_description = var.rds_security_group_description
    tags = var.tags
    ingress_cidr = var.ingress_cidr
}