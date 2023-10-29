output "ssh_keys" {
  value       = var.local_sshkey ? digitalocean_ssh_key.default[0].fingerprint :  data.digitalocean_ssh_key.ssh_key[0].fingerprint
  description = "ssh keys"
  sensitive   = true
}