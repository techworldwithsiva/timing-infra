module "acm" {
  source      = "terraform-aws-modules/acm/aws"
  version     = "~> 4.0"
  domain_name = "*.cloudcamp.in"
  zone_id     = var.zone_id
  subject_alternative_names = [
    "*.cloudcamp.in",
    "api.cloudcamp.in",
    "web.cloudcamp.in",
    "cdn.cloudcamp.in",
  ]
  wait_for_validation = true
  tags                = var.tags
}

module "acm_cdn" {
  source      = "terraform-aws-modules/acm/aws"
  version     = "~> 4.0"
  domain_name = "*.cloudcamp.in"
  zone_id     = var.zone_id
  subject_alternative_names = [
    "*.cloudcamp.in",
    "api.cloudcamp.in",
    "web.cloudcamp.in",
    "cdn.cloudcamp.in",
  ]
  wait_for_validation = true
  tags                = var.tags
  providers = {
    aws = aws.us-east-1-cdn
  }
}