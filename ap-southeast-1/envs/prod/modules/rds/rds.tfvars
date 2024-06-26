project_name = [
  "three-tier-architecture"
]

environment = [
  "prod"
]

engine_name = [
  "mysql"
]

engine_version = [
  "8.0"
]

storage = [
  "50"
]

identifier = [
  "db-mysql-prod"
]

instance_class = [
  "db.t3.micro"
]

multi_az = [
  "true"
]

database_name = [
  "dbmysql"
]

database_username = [
  "dbadmin"
]

database_password = [
  "S0methingS3cure!"
]

database_port = [
  "3306"
]

publicly_accessible = [
  "false"
]

database_snapshot = [
  "true"
]

db_subnet_group_name = [
  "aws_db_subnet_group.main.id"
]

db_security_group = [
  "aws_security_group.db_security_group.id"
]
