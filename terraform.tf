terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket       = "madhan-terraform-ha-state-295356240269"
    key          = "highly-available-aws/terraform.tfstate"
    region       = "us-west-1"
    encrypt      = true
    use_lockfile = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
