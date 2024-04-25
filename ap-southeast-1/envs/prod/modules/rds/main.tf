locals {
  required_tags = {
    project     = var.project_name,
    environment = var.environment,
  }
}


# DB - RDS Instance
resource "aws_db_instance" "main" {
  engine                       = var.engine_name
  engine_version               = var.engine_version
  allocated_storage            = var.storage 
  db_subnet_group_name         = var.db_subnet_group_name
  identifier                   = var.identifier
  instance_class               = var.instance_class
  multi_az                     = var.multi_az
  db_name                      = var.database_name
  username                     = var.database_username
  password                     = var.database_password
  port                         = var.database_port
  publicly_accessible          = var.publicly_accessible
  vpc_security_group_ids       = [var.db_security_group]
  skip_final_snapshot          = var.database_snapshot
  backup_target                = var.region
  backup_retention_period      = 7
  backup_window           = "03:00-04:00"
  maintenance_window      = "sun:05:00-sun:06:00"  
  tags = local.required_tags
}

