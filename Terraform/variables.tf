variable "access_key" {
    description = "Access key for aws user"
    type=string
    sensitive = true
}

variable "secret_key" {
    description = "Secret Access key for aws user"
    type=string
    sensitive = true
}

variable "db_password" {
    description = "password to access RDS database"
    type=string
    sensitive = true
}
