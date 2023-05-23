module "vpc" {
  source                  = "git::https://github.com/techworldwithsiva/terraform-modules.git//vpc"
  vpc_cidr                = var.vpc_cidr
  tags                    = var.tags
  public_subnet_cidr      = var.public_subnet_cidr
  azs                     = var.azs
  public_subnet_names     = var.public_subnet_names
  public_route_table_name = local.public_route_table_name

  #private subnet
  private_subnet_cidr      = var.private_subnet_cidr
  private_subnet_names     = var.private_subnet_names
  private_route_table_name = local.private_route_table_name

  #database subnet
  database_subnet_cidr      = var.database_subnet_cidr
  database_subnet_names     = var.database_subnet_names
  database_route_table_name = local.database_route_table_name

}