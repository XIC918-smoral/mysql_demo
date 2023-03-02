provider "aws" {
  region = "ap-south-1"
#   access_key = var.access_key
#   secret_key = var.secret_key
}

variable "username" {
}
variable "password" {
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  publicly_accessible  = true
  username             = var.username
  password             = var.password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
