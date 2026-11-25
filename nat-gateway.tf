
# Elastic IP for NAT Gateway 1
resource "aws_eip" "nat_1" {
  domain = "vpc"

  tags = merge(local.common_tags, {
    Name = "${local.common_name}-nat-eip-1"
  })
}

# Elastic IP for NAT Gateway 2
resource "aws_eip" "nat_2" {
  domain = "vpc"

  tags = merge(local.common_tags, {
    Name = "${local.common_name}-nat-eip-2"
  })
}

# NAT Gateway 1
resource "aws_nat_gateway" "nat_1" {
  allocation_id = aws_eip.nat_1.id
  subnet_id     = aws_subnet.public_1.id

  tags = merge(local.common_tags, {
    Name = "${local.common_name}-nat-1"
  })

  depends_on = [aws_internet_gateway.igw]
}

# NAT Gateway 2
resource "aws_nat_gateway" "nat_2" {
  allocation_id = aws_eip.nat_2.id
  subnet_id     = aws_subnet.public_2.id

  tags = merge(local.common_tags, {
    Name = "${local.common_name}-nat-2"
  })

  depends_on = [aws_internet_gateway.igw]
}
