environment = "development"
region_name = "ap-southeast-1"
region      = "singapore"
basedomain  = "sujalkokh.com.np"

vpcs = [
  {
    name                     = "development-vpc"
    cidr                     = "10.0.0.0/16"
    availability_zones       = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
    private_subnets          = ["10.0.0.0/18", "10.0.64.0/18", "10.0.128.0/18"]
    public_subnets           = ["10.0.192.0/19", "10.0.224.0/20", "10.0.240.0/20"]
    enable_flow_log          = false
    flow_log_destination_arn = ""
    tag_name                 = "development-vpc"
    tag_owner                = "DEVOPS"
    tag_project              = "rentomojo"
    tag_environment          = "DEVELOPMENT"
    tag_module               = "Networking"
  }
]
