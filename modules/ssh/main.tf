##### data sources

data "digitalocean_ssh_key" "ssh_key" {
  count = var.local_sshkey ? 0 : 1
  name  = "personal_ssh_key"
}

##### ssh keys generated locally

# generate a new SSH key locally
# it is stored in terraform.tfstate local file

resource "tls_private_key" "ssh" {
  count     = var.local_sshkey ? 1 : 0

  algorithm = "RSA"
  rsa_bits  = "4096"
}

resource "local_file" "private_key" {
  count           = var.local_sshkey ? 1 : 0

  content         = tls_private_key.ssh[0].private_key_pem
  filename        = "id_rsa"
  file_permission = "0600"
}

resource "local_file" "public_key" {
  count           = var.local_sshkey ? 1 : 0
  
  content         = tls_private_key.ssh[0].public_key_openssh
  filename        = "id_rsa.pub"
  file_permission = "0600"
}

# assing the already ssh key generated to DO ssh key
resource "digitalocean_ssh_key" "default" {
  count      = var.local_sshkey ? 1 : 0

  name       = "ssh_local_key"
  public_key = tls_private_key.ssh[0].public_key_openssh
}