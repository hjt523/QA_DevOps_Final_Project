variable "ami" {
    description = "ami for instances"
    default = "ami-0194c3e07668a7e36"
}

variable "intance_type" {
    description = "Instance type for instancse"             #might need to be made bigger
    default = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID for EC2"
}

variable "name" {
  description = "Name of EC2 Instance"
  default     = "QA_Final_Project_Manager_Node"
}

variable "enable_public_ip" {
  description = "Enable if EC2 instace should have public ip address"
  default     = true
}

variable "vpc_security_group_ids" {
  description = "VPC Security Group IDs"
}

variable "user_data" {
  description = "script to run when creating instance"
  default     = "data.template_file.init.rendered"
}