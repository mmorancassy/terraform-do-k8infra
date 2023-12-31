output "local_ssh_key" {
  value       = module.ssh.ssh_keys
  description = "Local ssh key generated and assigned to droplets"
  sensitive   = true  
}

#### Child outputs

## project

output "project_created_at" {
  value       = module.terraform_project.project_created_at
  description = "The date in which the project was created"
}

## droplet

output "droplet_ip_addr" {
  value       = values(module.kubernetes_nodes)[*].droplet_ip_addr
  description = "Kubernetes node droplet ip address"
}

output "droplet_private_ip_addr" {
  value       = values(module.kubernetes_nodes)[*].droplet_private_ip_addr
  description = "Kubernetes node droplet ip address"
}

## vpc

output "vpc_uuid" {
  value       = module.kubernetes_vpc.id
  description = "unique identifier of the vpc"
}

## tag

output "total_resource_count" {
  value       = values(module.tags)[*].total_resource_count
  description = "A count of the total number of resources that the tag is applied to"
}

output "droplets_count" {
  value       = values(module.tags)[*].droplets_count
  description = "A count of the Droplets the tag is applied to"
}

output "id" {
  value       = values(module.tags)[*].id
  description = "The ids of the tag"
}

## bucket

output "bucket_domain_name" {
    value       = module.bucket.bucket_domain_name
    description = "The FQDN of the bucket"
}

output "bucket_endpoint" {
    value       = module.bucket.bucket_endpoint
    description = "The FQDN of the bucket without the bucket name"
}

## registry

output "registry_endpoint" {
    value       = module.registry.endpoint
    description = "The URL endpoint of the container registry"
}

output "registry_server_url" {
    value       = module.registry.server_url
    description = "The domain of the container registry"
}