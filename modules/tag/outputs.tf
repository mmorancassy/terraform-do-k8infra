output "total_resource_count" {
  value       = digitalocean_tag.tag.total_resource_count
  description = "A count of the total number of resources that the tag is applied to"
}

output "droplets_count" {
  value       = digitalocean_tag.tag.droplets_count
  description = "A count of the Droplets the tag is applied to"
}

output "id" {
  value       = digitalocean_tag.tag.id
  description = "The id of the tag"
}