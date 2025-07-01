variable "instance_type" {
 type = string
 default = "t2.micro"
}

variable "key_pair" {
 type = string
 description = "enter existing key pair : "
}
 variable "ami_id" {
 default = "ami-04f167a56786e4b09"
}