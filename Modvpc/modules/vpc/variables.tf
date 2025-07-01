variable "env" {
  type = string
  description = "Envi name :"
}

variable "vpc_cidr" {
  type = string
  description = "CIDR block for the VPC : "
}

variable "public_subnet_cidr" {
  type = string
  description = "CIDR block for the public subnet : "
}

variable "availability_zone" {
  type = string
  description = "AZ to launch the subnet in : "
}
