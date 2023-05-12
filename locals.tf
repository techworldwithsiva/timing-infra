locals {
  #timing-public this is equal to project name - public
  public_route_table_name = format("%s-%s", lookup(var.tags, "Name"), "public")
  private_route_table_name = format("%s-%s", lookup(var.tags, "Name"), "private")
  database_route_table_name = format("%s-%s", lookup(var.tags, "Name"), "database")

  vpc_id = module.vpc.vpc_id
  rds_security_group_id = module.rds_sg.security_group_id
  db_subnet_group_name = module.vpc.db_subnet_group_name
}