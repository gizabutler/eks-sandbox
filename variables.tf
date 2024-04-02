
variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}


variable "cluster_name" {
  description = "cluster name"
  type        = string
  default     = "test"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = "test"
}

variable "private_subnets" {
  description = "Subnet IDs"
  type        = string
  default     = "test"
}