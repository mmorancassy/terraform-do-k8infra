# Droplet module variables

variable ssh_key_path {
  type        = string
  description = "The file path to a ssh public key"
  default     = "~/.ssh/id_rsa.pub" 
}

variable "name" {
  type        = string
  description = "The name if this droplet"
}

variable "os" {
  type        = string
  description = "The operating system chosen for this droplet"
}

variable "region" {
  type        = string
  description = "DO Region where de droplet is deployed"
}

variable "size" {
  type        = string
  description = "DO Droplet worker node size"
}

variable "ssh_keys" {
  type        = set(string)
  description = "DO Droplet worker node size"
}

variable "vpc_uuid" {
  type        = string
  description = "unique identifier of the vpc already created"
}

variable "tags" {
  type        = set(string)
  description = "DO tags assigned to the droplets"
}