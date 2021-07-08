resource "aws_db_subnet_group" "subnet_group" {
  name       = "main"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "subnet group"
  }
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  max_allocated_storage = 100                   #autoscale storage
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "petclinic_db"
  username             = "admin"
  password             = var.db_password
  db_subnet_group_name      = aws_db_subnet_group.subnet_group.id
  vpc_security_group_ids    = var.vpc_security_group_ids
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}