
module "rds" {
  source = "./modules/rds"

  project_name = local.common_name
  db_password  = var.db_password

  db_subnet_group_name  = aws_db_subnet_group.main.name
  rds_security_group_id = module.security.rds_sg_id

  common_tags = local.common_tags
}

