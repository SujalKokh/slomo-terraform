locals {
  environment = var.environment
  name        = "rentomojo-${var.environment}"
  tags = {
    "sujalkokh.com.np/managedBy" : "terraform"
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-vpn-poc"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}

# module "key_pair" {
#   source  = "terraform-aws-modules/key-pair/aws"
#   version = "2.0.1"

#   key_name   = "rentomojo-${var.environment}"
#   public_key = file("${path.module}/files/ssh-keys/rentomojo-${var.environment}.pub")
# }
