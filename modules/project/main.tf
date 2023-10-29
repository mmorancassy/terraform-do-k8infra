resource "digitalocean_project" "terraform_project" {
  name        = var.project_name
  description = var.project_description
  purpose     = var.project_purpose
  environment = var.project_environment
  resources   = var.project_resources
}