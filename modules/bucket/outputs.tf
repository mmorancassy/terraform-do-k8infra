output "bucket_urn" {
    value       = digitalocean_spaces_bucket.bucket.urn
    description = "The uniform resource name for the bucket"
}

output "bucket_domain_name" {
    value       = digitalocean_spaces_bucket.bucket.bucket_domain_name
    description = "The FQDN of the bucket"
}

output "bucket_endpoint" {
    value       = digitalocean_spaces_bucket.bucket.endpoint
    description = "The FQDN of the bucket without the bucket name"
}