provider "aws" {
 region = "us-east-2"
}

resource "aws_s3_bucket" "tf_s3"{
 bucket = var.bucket_name

 tags = {
  environment = var.env_name
 }
}
