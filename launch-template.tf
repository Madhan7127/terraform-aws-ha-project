
module "ec2" {
  source = "./modules/ec2"

  project_name          = local.common_name
  ami_id                = var.ami_id
  instance_type         = var.instance_type
  web_security_group_id = module.security.web_sg_id

  public_subnet_ids = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]

  target_group_arn = module.alb.target_group_arn
  min_size         = var.min_size
  desired_capacity = var.desired_capacity
  max_size         = var.max_size
  common_tags      = local.common_tags
}

