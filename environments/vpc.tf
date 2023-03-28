module "vpc" {
  source   = "../modules/vpc"
  for_each = { for vpc in var.vpcs : vpc.name => vpc }

  name                     = each.value.name
  cidr                     = each.value.cidr
  availability_zones       = each.value.availability_zones
  private_subnets          = each.value.private_subnets
  public_subnets           = each.value.public_subnets
  enable_flow_log          = each.value.enable_flow_log
  flow_log_destination_arn = each.value.flow_log_destination_arn
  tag_name                 = each.value.tag_name
  tag_owner                = each.value.tag_owner
  tag_project              = each.value.tag_project
  tag_environment          = each.value.tag_environment
  tag_module               = each.value.tag_module
}
