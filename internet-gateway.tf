
resource "aws_internet_gateway" "igw" {
  vpc_id = module.vpc.vpc_id

  tags = merge(local.common_tags, {
    Name = "${local.common_name}-igw"
  })
}
