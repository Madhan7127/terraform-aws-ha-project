
# Public Subnet 1
resource "aws_subnet" "public_1" {
  vpc_id                  = module.vpc.vpc_id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-west-1a"
  map_public_ip_on_launch = true

  tags = merge(local.common_tags, {
    Name = "${local.common_name}-public-1"
    Type = "Public"
  })
}

# Public Subnet 2
resource "aws_subnet" "public_2" {
  vpc_id                  = module.vpc.vpc_id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-west-1c"
  map_public_ip_on_launch = true

  tags = merge(local.common_tags, {
    Name = "${local.common_name}-public-2"
    Type = "Public"
  })
}

# Private Subnet 1
resource "aws_subnet" "private_1" {
  vpc_id            = module.vpc.vpc_id
  cidr_block        = "10.0.11.0/24"
  availability_zone = "us-west-1a"

  tags = merge(local.common_tags, {
    Name = "${local.common_name}-private-1"
    Type = "Private"
  })
}

# Private Subnet 2
resource "aws_subnet" "private_2" {
  vpc_id            = module.vpc.vpc_id
  cidr_block        = "10.0.12.0/24"
  availability_zone = "us-west-1c"

  tags = merge(local.common_tags, {
    Name = "${local.common_name}-private-2"
    Type = "Private"
  })
}

