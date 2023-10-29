variable "name" {
  type        = string
  description = "The name of the ssh_key"
}

variable "public_key" {
  type        = string
  description = "ssh keys generated or obtained from DO"
}

variable "local_sshkey" {
  type        = bool
  description = "Determine whether to generate and load a local ssh_key, if set to true it does"
}