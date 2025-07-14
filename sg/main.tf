provider "aws" {
  region = "us-east-2"
}

data "aws_vpc" "default_vpc" {
  default = true
}

resource "aws_security_group" "aws_sg" {
  name = "sg_tf"
  vpc_id = data.aws_vpc.default_vpc.id
    
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
}
