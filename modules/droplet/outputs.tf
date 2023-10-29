output "droplet_ip_addr" {
  value       = digitalocean_droplet.kubernetes_node.ipv4_address
  description = "Kubernetes node droplet ip address"
}

output "droplet_private_ip_addr" {
  value       = digitalocean_droplet.kubernetes_node.ipv4_address_private
  description = "Kubernetes node droplet private ip address"
}

output "droplet_urn" {
  value       = digitalocean_droplet.kubernetes_node.urn
  description = "Kubernetes droplet urn"
}