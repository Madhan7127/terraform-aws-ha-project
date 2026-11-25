module "vpc" {
  source = "./modules/vpc"

  vpc_cidr     = var.vpc_cidr
  project_name = local.common_name
  common_tags  = local.common_tags
}
