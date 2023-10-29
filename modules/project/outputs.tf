output "project_identifier" {
  value       = digitalocean_project.terraform_project.id
  description = "The unique identifier of the project"
}

output "project_created_at" {
  value       = digitalocean_project.terraform_project.created_at
  description = "The date in which the project was created"
}