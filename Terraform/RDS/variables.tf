variable "db_password" {
    # description = "password to access RDS database"
    # type=string
    sensitive = true
}

variable "subnet_ids" {}

variable "vpc_security_group_ids" {}
