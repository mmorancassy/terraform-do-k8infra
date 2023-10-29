resource "digitalocean_vpc" "private_network" {
  name     = var.vpc_name
  region   = var.vpc_region
  ip_range = var.vpc_ip_range
}