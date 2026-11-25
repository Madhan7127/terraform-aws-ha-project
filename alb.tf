
module "alb" {
  source = "./modules/alb"

  project_name          = local.common_name
  alb_security_group_id = module.security.alb_sg_id

  public_subnet_ids = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]

  vpc_id      = module.vpc.vpc_id
  common_tags = local.common_tags
}

