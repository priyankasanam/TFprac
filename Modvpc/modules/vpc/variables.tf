
variable "vpc_cidr" {
  type = string
  description = "CIDR block for VPC : "
}

variable "public_subnet_cidr" {
 type = string
 description = " CIDR Block for public subnet : "
}

variable "availability_zone" {
 type = string
 description = "Availability zone to launch subnet in : "
}

