output "instance_id" {
 value = aws_instance.tf_instance.id
}

output "public_ip" {
 value = aws_instance.tf_instance.public_ip
}