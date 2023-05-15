module "ecs_cluster" {
  source = "../terraform-modules-ecs-cluster"
  ecs_cluster_name = var.ecs_cluster_name
  ecs_log_group_name = var.ecs_log_group_name
  tags = var.tags
}

resource "aws_ecr_repository" "app" {
  name                 = "node-app-backend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}