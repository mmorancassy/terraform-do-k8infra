provider "digitalocean" {
  token             = var.do_token
  spaces_access_id  = var.access_id
  spaces_secret_key = var.secret_key  
}