variable "name" {
  description = "Name of the vpc"
  type        = string
}

variable "cidr" {
  description = "CIDR for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "AZs to use for the VPC"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnets to use for the VPC"
  type        = list(string)
}

variable "public_subnets" {
  description = "Public subnets to use for the VPC"
  type        = list(string)
}

variable "private_subnet_tags" {
  description = "Private subnets tags to use for the VPC"
  type        = map(string)
  default     = {}
}

variable "public_subnet_tags" {
  description = "Public subnets tags to use for the VPC"
  type        = map(string)
  default     = {}
}

variable "enable_nat_gateway" {
  description = "Provision NAT Gateways for each private subnets?"
  type        = bool
  default     = true
}


variable "single_nat_gateway" {
  description = "Provision a single NAT Gatewway across across all of your private networks?"
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Enable DNS Hostnames in the VPC?"
  type        = bool
  default     = true
}

variable "enable_flow_log" {
  description = "Enable flow logs in VPC?"
  type        = bool
  default     = true
}

variable "flow_log_destination_arn" {
  description = "S3 bucket to send the VPC flow logs"
  type        = string
  default     = ""
}

variable "tag_name" {
  description = "Name of the VPC (For tag)"
  type        = string
}

variable "tag_owner" {
  description = "Owner of the VPC (For tag)"
  type        = string
}

variable "tag_project" {
  description = "Project name of the VPC used (For Tag) "
  type        = string
}

variable "tag_environment" {
  description = "Environment stage name of the VPC (For Tag)"
  type        = string
}

variable "tag_module" {
  description = "Module name of VPC (For Tag)"
  type        = string
}
