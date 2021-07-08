terraform {
    backend "s3" {
        bucket = "terraform-state-files-26398476"
        key = "./terraform.tfstate"
        region = "eu-west-2"
        dynamodb_table = "terraformlocks-mohit-87455672973"
        encrypt = true
  }
}

variable "access_key" {}

variable "secret_key" {}

variable "db_password" {}

provider "aws" {
    access_key = var.access_key
    secret_key = var.secret_key 
    region = "eu-west-2"
    # shared_credentials_file = "~/.aws/credentials"
}

resource "aws_dynamodb_table" "terraform-locks" {
    name         = "terraform-locks-mohit-87455672973"
    billing_mode = "PAY_PER_REQUEST"
    hash_key     = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
}

data "terraform_remote_state" "main" {
    backend = "s3"
    config = {
        bucket  = "terraform-state-files-26398476"
        key     = "./terraform.tfstate"
        region  = "eu-west-2"
    }
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

module "security_group" {
    source = "./SG"
    vpc_id = module.vpc.vpc_id
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
    subnet_id = module.subnet.subnet_1
    vpc_security_group_ids = [module.security_group.sg_id]
    # ami_id = var.ami_id
}

module "rds" {
    source = "./RDS"
    db_password=var.db_password
    subnet_ids = module.subnet.subnet_ids
    vpc_security_group_ids = [module.security_group.sg_id]
}

