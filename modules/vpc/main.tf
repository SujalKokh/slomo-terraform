module "vpc" {
  source                 = "terraform-aws-modules/vpc/aws"
  version                = "~> 3.19.0"
  name                   = var.name
  cidr                   = var.cidr
  azs                    = var.availability_zones
  private_subnets        = var.private_subnets
  public_subnets         = var.public_subnets
  create_egress_only_igw = true
  enable_nat_gateway     = var.enable_nat_gateway
  single_nat_gateway     = var.single_nat_gateway
  enable_dns_hostnames   = var.enable_dns_hostnames

  public_subnet_tags = merge(
    var.public_subnet_tags,
    {
      "Access" : "Public"
    }
  )

  private_subnet_tags = merge(
    var.private_subnet_tags,
    {
      "Access" : "Private"
    }
  )

  enable_flow_log           = var.enable_flow_log
  flow_log_destination_type = "s3"
  flow_log_destination_arn  = var.flow_log_destination_arn

  vpc_tags = {
    ResourceType = "vpc"
    Name         = var.tag_name
    Owner        = var.tag_owner
    Project      = var.tag_project
    Environment  = var.tag_environment
    Module       = var.tag_module
    Terraform    = true
  }
}
