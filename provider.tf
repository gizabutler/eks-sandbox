provider "aws" {
  region = var.region
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  # config_context = "my-context"
}