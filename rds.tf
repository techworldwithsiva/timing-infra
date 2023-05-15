module "rds" {
  source = "../terraform-modules-rds"
  allocated_storage = var.allocated_storage
  db_name = var.db_name
  identifier = var.identifier
  engine = var.engine
  engine_version = var.engine_version
  instance_type = var.instance_type
  username = var.rds_username
  db_subnet_group_name = local.db_subnet_group_name
  vpc_security_group_ids = [local.rds_security_group_id]
  #secret_name = var.secret_name
  rds_secret_arn = var.rds_secret_arn
  tags = var.tags
}