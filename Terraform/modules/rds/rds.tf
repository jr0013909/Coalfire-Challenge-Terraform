resource "random_password" "database_password" {
  length  = 20
  special = false
}

resource "aws_db_subnet_group" "rds_subnet_group" {
  name        = "database_subnet_group"
  description = "Terraform-managed subnet group for RDS"
  subnet_ids  = var.subnet_ids

  tags = {
    Name = "database_subnet_group"
  }
}

resource "aws_db_instance" "rds_db" {
  identifier             = var.identifier
  allocated_storage      = var.allocated_storage
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  db_name                = var.db_name
  port                   = var.port
  username               = var.username
  password               = random_password.database_password.result
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids = var.vpc_security_group_ids
  multi_az               = var.multi_az
  copy_tags_to_snapshot  = true
  skip_final_snapshot    = true
  publicly_accessible = var.publicly_accessible
  storage_encrypted   = "false"
  tags = {
    Name = "postgresql-db"
  }
}


























