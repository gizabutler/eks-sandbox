
locals {
  deployment_name = "spw-sandbox-${random_string.suffix.result}"
  app_name = "tasky"
  ami_id = "ami-011eeb2b8989b0687"
}

resource "random_string" "suffix" {
  length  = 4
  upper   = false
  special = false
}

module "vpc" {
    source                         = "./modules/vpc"
    cluster_name                   = local.deployment_name
}

module "mongodb" {
    source                         = "./modules/mongodb"
    subnet_id                      = module.vpc.public_subnets[0]
    app_name                       = local.app_name
    ami_id                         = local.ami_id
    vpc_id                         = module.vpc.vpc_id
}

module "eks" {
    source                         = "./modules/eks"
    cluster_name                   = local.deployment_name
    vpc_id = module.vpc.vpc_id
    private_subnets = module.vpc.private_subnets
}