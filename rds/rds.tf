# resource "aws_db_instance" "mydatabase" {
#   allocated_storage    = 20
#   storage_type         = "gp2"
#   engine               = "mysql"
#   engine_version       = "5.7"
#   instance_class       = "db.t2.micro"
#   name                 = "mydb"
#   username             = "foo"
#   password             = "foobarbaz"
#   parameter_group_name = "default.mysql5.7"
#   backup_retention_period  = 7
#   #db_subnet_group_name     = "test"
#   identifier               = "mydb1"
#   multi_az                 = false
#   port                     = 3306
#   publicly_accessible      = true
#   storage_encrypted        = true
# }

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  publicly_accessible      = true
  identifier               = "mydb1"
  apply_immediately = true
  final_snapshot_identifier = false
  vpc_security_group_ids = ["sg-00463fb6f678d9f96"]
}

# resource "aws_db_security_group" "default" {
#   name = "rds_sg"

#   ingress {
#     cidr = "0.0.0.0/0"
#   }
# }

provider "mysql" {
    endpoint = aws_db_instance.default.endpoint
    username = "foo"
    password = "foobarbaz"
}

resource "mysql_user" "darsh" {
  user               = "darshan"
  plaintext_password = "password"
}