output public_ip {
 value = module.tf_ec2.public_ip
}

output instance_id {
 value = module.tf_ec2.instance_id
}
