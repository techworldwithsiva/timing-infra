module "ecs_cluster" {
  source             = "git::https://github.com/techworldwithsiva/terraform-modules-ecs-cluster.git"
  ecs_cluster_name   = var.ecs_cluster_name
  ecs_log_group_name = var.ecs_log_group_name
  tags               = var.tags
}

resource "aws_ecr_repository" "app" {
  name                 = "node-app-backend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}

resource "aws_ecr_repository" "web" {
  name                 = "node-web-frontend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}