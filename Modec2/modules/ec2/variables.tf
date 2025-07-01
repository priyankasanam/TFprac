variable "ami_id" {
 type = string
 default = "ami-04f167a56786e4b09"
}

variable "instance_type" {
 default = "t2.micro"
}

variable "key_pair" {
 type = string
 description = "enter the existing key pair : "
}