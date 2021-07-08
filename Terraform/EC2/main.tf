resource "aws_instance" "nginx" {
    ami = var.ami
    instance_type = var.intance_type

    associate_public_ip_address = var.enable_public_ip
    subnet_id                   = var.subnet_id
    vpc_security_group_ids      = var.vpc_security_group_ids
    user_data                   = var.user_data
    tags = {
        Name = "NginX"
    }
}

resource "aws_instance" "frontend" {
    ami = var.ami
    instance_type = var.intance_type

    associate_public_ip_address = var.enable_public_ip
    subnet_id                   = var.subnet_id
    vpc_security_group_ids      = var.vpc_security_group_ids
    user_data                   = var.user_data
    tags = {
        Name = "Frontend"
    }
}

resource "aws_instance" "backend" {
    ami = var.ami
    instance_type = var.intance_type
    associate_public_ip_address = var.enable_public_ip
    subnet_id                   = var.subnet_id
    vpc_security_group_ids      = var.vpc_security_group_ids
    user_data                   = var.user_data
    tags = {
        Name = "Backend"
    }
}