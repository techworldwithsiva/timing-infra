module "app_alb" {
    source  = "terraform-aws-modules/alb/aws"
    name = var.app_alb_name
    load_balancer_type = "application"
    vpc_id             = local.vpc_id
    subnets  = local.public_subent_ids #temporary purpose
    security_groups  = [local.app_alb_security_group_id]
    create_security_group = false #we created already
    target_groups = [
        {
            name_prefix = "app-"
            backend_protocol   = "HTTP"
            backend_port                      = 80
            target_type                       = "ip" #for ecs we need to use IP
            deregistration_delay              = 10
            health_check = {
                enabled             = true
                interval            = 15
                path                = "/health" #application developer should configure this
                healthy_threshold   = 3
                unhealthy_threshold = 3
                timeout             = 6
                protocol            = "HTTP"
                matcher             = "200-399"
            }
        }
    ]

    https_listeners = [
        {
            port               = 443
            protocol           = "HTTPS"
            certificate_arn = module.acm.acm_certificate_arn
            target_group_index = 0
        }
    ]

    tags = merge(
        var.tags,
        var.app_alb_tags
    )
}

module "web_alb" {
    source  = "terraform-aws-modules/alb/aws"
    name = var.web_alb_name
    load_balancer_type = "application"
    vpc_id             = local.vpc_id
    subnets  = local.public_subent_ids #temporary purpose
    security_groups  = [local.web_alb_security_group_id]
    create_security_group = false #we created already
    target_groups = [
        {
            name_prefix = "web-"
            backend_protocol   = "HTTP"
            backend_port                      = 80
            target_type                       = "ip" #for ecs we need to use IP
            deregistration_delay              = 10
            health_check = {
                enabled             = true
                interval            = 15
                path                = "/health" #application developer should configure this
                healthy_threshold   = 3
                unhealthy_threshold = 3
                timeout             = 6
                protocol            = "HTTP"
                matcher             = "200-399"
            }
        }
    ]

    https_listeners = [
        {
            port               = 443
            protocol           = "HTTPS"
            certificate_arn = module.acm.acm_certificate_arn
            target_group_index = 0
        }
    ]

    tags = var.tags
    
}