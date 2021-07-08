resource "aws_db_instance" "default" {
  allocated_storage    = 10
  max_allocated_storage = 100                   #autoscale storage
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "petclinic_db"
  username             = "admin"
  password             = var.db_password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}