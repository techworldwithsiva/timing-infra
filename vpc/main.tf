module "vpc" {
  source = "../../terraform-modules/vpc"
public_subnet_cidr = var.public_subnet_cidr
private_subnet_cidr = var.private_subnet_cidr
database_subnet_cidr = var.database_subnet_cidr
cidr = var.cidr
  tags = merge(local.tags, {
      Name = "timing"
  })
  public_subnet_tags = merge(local.tags, {
      Name = "timing-public"
  })
  private_subnet_tags = merge(local.tags, {
      Name = "timing-private"
  })
  database_subnet_tags = merge(local.tags, {
      Name = "timing-database"
  })
  igw_tags = merge(local.tags, {
      Name = "timing"
  })
  public_route_table_tags = merge(local.tags, {
      Name = "timing-public"
  })
  private_route_table_tags = merge(local.tags, {
      Name = "timing-private"
  })
  nat_tags = merge(local.tags, {
      Name = "timing"
  })
}