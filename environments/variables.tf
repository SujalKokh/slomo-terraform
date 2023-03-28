variable "environment" {
  description = "AWS Resources Environment (dev, qa, staging, uat, production)"
  type        = string
}

variable "basedomain" {
  description = "Basedomain used for the DNS resolution"
  type        = string
}

variable "region" {
  description = "AWS region for the infrastructure"
  type        = string
}

variable "region_name" {
  description = "AWS Region name for the infrastructure"
  type        = string
}

variable "vpcs" {
  description = "List of VPCs"
  type = list(object(
    {
      name                     = string
      cidr                     = string
      availability_zones       = list(string)
      private_subnets          = list(string)
      public_subnets           = list(string)
      enable_flow_log          = bool
      flow_log_destination_arn = string
      tag_name                 = string
      tag_owner                = string
      tag_project              = string
      tag_environment          = string
      tag_module               = string
    }
  ))
  default = [{
    availability_zones       = ["value"]
    cidr                     = "value"
    enable_flow_log          = false
    flow_log_destination_arn = "value"
    name                     = "value"
    private_subnets          = ["value"]
    public_subnets           = ["value"]
    tag_environment          = "value"
    tag_module               = "value"
    tag_name                 = "value"
    tag_owner                = "value"
    tag_project              = "value"
  }]
}
