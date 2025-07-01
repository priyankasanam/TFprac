resource "aws_vpc" "myvpc" {
 cidr_block = var.vpc_cidr
 enable_dns_hostnames = true
}

resource "aws_subnet" "public" {
 vpc_id = aws_vpc.myvpc.id
 cidr_block = var.public_subnet_cidr
 map_public_ip_on_launch = true
 availability_zone = var.availability_zone
}

resource "aws_internet_gateway" "igw" {
 vpc_id = aws_vpc.myvpc.id
}

resource "aws_route_table" "public_route" {
 vpc_id = aws_vpc.myvpc.id
 route {
   cidr_block = "0.0.0.0/0"
   gateway_id = aws_internet_gateway.igw.id
 }
}

resource "aws_route_table_association" "public_assoc" {
 subnet_id = aws_subnet.public.id
 route_table_id = aws_route_table.public_route.id
}

