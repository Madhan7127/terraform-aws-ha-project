resource "aws_db_subnet_group" "main" {
  name = "${local.common_name}-db-subnet-group"

  subnet_ids = [
    aws_subnet.private_1.id,
    aws_subnet.private_2.id
  ]

  tags = merge(local.common_tags, {
    Name = "${local.common_name}-db-subnet-group"
  })
}
