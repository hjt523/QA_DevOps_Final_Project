provider "aws" {
    access_key = AKIARFFIVSUQDJOVG4GH
    secret_key = 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
    region = "eu-west-2"
}

resource "aws_instance" "nginx" {
    ami = "ami-0194c3e07668a7e36"
    instance_type = "t2.micro"
    tags = {
        Name = "NginX"
    }
}

resource "aws_instance" "frontend" {
    ami = "ami-0194c3e07668a7e36"
    instance_type = "t2.micro"
    tags = {
        Name = "Frontend"
    }
}

resource "aws_instance" "backend" {
    ami = "ami-0194c3e07668a7e36"
    instance_type = "t2.micro"
    tags = {
        Name = "Backend"
    }
}
