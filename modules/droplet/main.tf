resource "digitalocean_droplet" "kubernetes_node" {
  name        = var.name
  image       = var.os
  region      = var.region
  size        = var.size
  ssh_keys    = var.ssh_keys
  vpc_uuid    = var.vpc_uuid
  tags        = var.tags
}