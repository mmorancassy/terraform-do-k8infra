output "endpoint" {
    value       = digitalocean_container_registry.k8sregistry.endpoint
    description = "The URL endpoint of the container registry"
}

output "server_url" {
    value       = digitalocean_container_registry.k8sregistry.server_url
    description = "The domain of the container registry"
}