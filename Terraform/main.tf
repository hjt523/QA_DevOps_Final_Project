provider "aws" {
    access_key = var.access_key
    secret_key = var.secret_key
    region = "eu-west-2"
    #shared_credentials_file = "~/.aws/credentials"
}

module "vpc" {
    source = "./VPC"
    vpc_cidr_block = "172.160.0.0/16"
}

module "subnet" {
    source = "./SUBNET"
    vpc_id = module.vpc.vpc_id
    vpc_cidr_block = module.vpc.vpc_cidr_block
}



module "igw" {
    source = "./IGW"
    vpc_id = module.vpc.vpc_id
    subnet_1 = module.subnet.subnet_1
    subnet_2 = module.subnet.subnet_2
}

module "iam" {
    source = "./IAM"
}

module "eks" {
    source = "./EKS"
    subnet_ids = module.subnet.subnet_ids
    cluster_iam_role_arn = module.iam.cluster_iam_role
    node_iam_role_arn = module.iam.node_iam_role
    available_subnets = [module.subnet.subnet_1, module.subnet.subnet_2]
}

module "instances" {
    source = "./EC2"
}

module "rds" {
    source = "./RDS"
    db_password=var.db_password
}



