locals {
  #timing-public this is equal to project name - public
  public_route_table_name   = format("%s-%s", lookup(var.tags, "Name"), "public")
  private_route_table_name  = format("%s-%s", lookup(var.tags, "Name"), "private")
  database_route_table_name = format("%s-%s", lookup(var.tags, "Name"), "database")

  vpc_id                    = module.vpc.vpc_id
  rds_security_group_id     = module.rds_sg.security_group_id
  db_subnet_group_name      = module.vpc.db_subnet_group_name
  ecs_cluster_id            = module.ecs_cluster.ecs_cluster_id
  app_alb_security_group_id = module.app_alb_sg.security_group_id
  web_alb_security_group_id = module.web_alb_sg.security_group_id
  private_subnet_ids        = module.vpc.private_subnet_ids
  public_subent_ids         = module.vpc.public_subnet_ids
  app_alb_arn               = module.app_alb.lb_arn
  api_alb_dns_name          = module.app_alb.lb_dns_name
  api_alb_zone_id           = module.app_alb.lb_zone_id

  web_alb_dns_name = module.web_alb.lb_dns_name
  web_alb_zone_id  = module.web_alb.lb_zone_id
}