resource "digitalocean_spaces_bucket" "bucket" {
    name          = var.name
    region        = var.region
    acl           = var.acl
    force_destroy = var.force_destroy
}