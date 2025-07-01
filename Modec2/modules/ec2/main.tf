provider "aws" {
 region = "us-east-2"
}

resource "aws_instance" "tf_instance" {
 ami = var.ami_id
 instance_type = var.instance_type
 key_name = var.key_pair

 tags = {
  Name = "first tf instance"
 }
}
