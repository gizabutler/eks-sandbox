output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS region"
  value       = var.region
}

output "vpc_id" {
    description = "VPC Id"
    value = module.vpc.vpc_id
}


output "private_subnets" {
    description = "Subnet IDs"
    value = module.vpc.private_subnets
}

output "public_subnets" {
    description = "Subnet IDs"
    value = module.vpc.public_subnets
}

output "mongo_ip" {
  description = "Kubernetes Cluster Name"
  value       = module.mongodb
}

output "bucket_name" {
    description = "s3 Bucket Name"
    value       = module.s3_bucket.s3_bucket_id
}