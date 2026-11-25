provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "Highly-Available-AWS"
      Environment = "Dev"
      ManagedBy   = "Terraform"
    }
  }
}
