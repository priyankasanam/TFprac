
output "vpc_id" {
 value = module.tf_vpc.vpc_id
}

output "public_subnet_id" {
 value = module.tf_vpc.public_subnet_id
}