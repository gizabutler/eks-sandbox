data "aws_availability_zones" "available" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

locals {
  cluster_name = "spw-sandbox-${random_string.suffix.result}"
}

resource "random_string" "suffix" {
  length  = 8
  special = false
}
