module "security" {
  source = "./modules/security"

  project_name = local.common_name
  vpc_id       = module.vpc.vpc_id
  ssh_cidr     = "54.241.220.62/32"
  common_tags  = local.common_tags
}
