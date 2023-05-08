locals {
  #timing-public this is equal to project name - public
  public_route_table_name = format("%s-%s", lookup(var.tags, "Name"), "public")
  private_route_table_name = format("%s-%s", lookup(var.tags, "Name"), "private")
  database_route_table_name = format("%s-%s", lookup(var.tags, "Name"), "database")
}