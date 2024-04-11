output "mongo_ip" {
  description = "Kubernetes Cluster Name"
  value       = module.ec2_instance.public_ip
}