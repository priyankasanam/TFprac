provider "aws" {
 region = "us-east-2"
}

module "tf_vpc" {
 source = "./modules/vpc"
 vpc_cidr = var.vpc_cidr
 public_subnet_cidr = var.public_subnet_cidr
 availability_zone = var.availability_zone
}
