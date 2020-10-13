provider "aws" {
  region = "ap-south-1"
  profile = "mytask6"
}


resource "aws_db_instance" "MySQL" {
  allocated_storage = 20
  engine            = "mysql"
  engine_version    = "5.7.30"
  instance_class    = "db.t2.micro"
  name     = "mydb"
  username = "mydatebase"
  password = "redhat12345"
  port     = "3306"
  publicly_accessible = true
  skip_final_snapshot = true
  iam_database_authentication_enabled = true
  vpc_security_group_ids = ["sg-896e29eb"]
  tags = {
     Name = "mysql"
 }
}