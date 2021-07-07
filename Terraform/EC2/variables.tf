variable "ami" {
    description = "ami for instances"
    default = "ami-0194c3e07668a7e36"
}

variable "intance_type" {
    description = "Instance type for instancse"             #might need to be made bigger
    default = "t2.micro"
}
