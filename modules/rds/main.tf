
resource "aws_db_instance" "main" {
  identifier = "${var.project_name}-mysql-db"

  engine         = "mysql"
  instance_class = "db.t3.micro"

  allocated_storage = 20
  storage_type      = "gp3"
  storage_encrypted = true

  db_name  = "spidydb"
  username = "admin"
  password = var.db_password

  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = [var.rds_security_group_id]

  multi_az            = true
  publicly_accessible = false

  backup_retention_period = 1
  deletion_protection     = false
  skip_final_snapshot     = true

  tags = merge(var.common_tags, {
    Name = "${var.project_name}-mysql-db"
  })
}
