resource "aws_instance" "nginx" {
    ami = var.ami
    instance_type = var.intance_type
    tags = {
        Name = "NginX"
    }
}

resource "aws_instance" "frontend" {
    ami = var.ami
    instance_type = var.intance_type
    tags = {
        Name = "Frontend"
    }
}

resource "aws_instance" "backend" {
    ami = var.ami
    instance_type = var.intance_type
    tags = {
        Name = "Backend"
    }
}