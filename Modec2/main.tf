provider "aws" {
 region = "us-east-2"
}

module "tf_ec2" {
 source = "./modules/ec2"
 key_pair = var.key_pair
 instance_type = var.instance_type
 ami_id = var.ami_id
}
