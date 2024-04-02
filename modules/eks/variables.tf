variable "cluster_name" {
  description = "cluster name"
  type        = string
}

variable "vpc_id" {
    description = "VPC Id"
    type = string
}


variable "private_subnets" {
    description = "Subnet IDs"
    type = list
}