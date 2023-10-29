##### input variables

variable "do_token" {}

##### vpc variables

variable "vpc_name" {
  type        = string
  description = "vpc name" 
  default     = "kubernetes-vpc"
}

variable "vpc_region" {
  type        = string
  description = "vpc region, same as the pods" 
  default     = "lon1"
}

variable "vpc_ip_range" {
  type        = string
  description = "vpc ip range"
  default     = "10.10.10.0/24"
}

##### tag variables

variable "tag_attributes" {
  type = list(object({
    name = string
  }))
  default = [
    { name = "kubernetes" },
    { name = "deployment" }
  ] 
}

##### droplet module variables

variable "node_attributes" {
  type = list(object({
    name        = string
    os          = string
    region      = string
    size        = string
    ssh_keys    = set(string)
    vpc_uuid    = string
    tags        = set(string)
  }))
  default = [
    { name = "masternode", os = "rockylinux-8-x64", region = "lon1", size = "g-2vcpu-8gb", ssh_keys = null, vpc_uuid = null, tags = null},    
    { name = "workernode1", os = "rockylinux-8-x64", region = "lon1", size = "g-2vcpu-8gb", ssh_keys = null, vpc_uuid = null, tags = null},
    { name = "workernode2", os = "rockylinux-8-x64", region = "lon1", size = "g-2vcpu-8gb", ssh_keys = null, vpc_uuid = null, tags = null}, 
  ]
}

##### project module variables

variable "project_name" {
  type        = string
  description = "The name of the project"
  default     = "kubernetes DEV cluster"
}

##### ssh module variables

variable "local_sshkey" {
  type        = bool
  description = "Determine whether to generate and load a local ssh_key, if set to true it does"
  default     = true
}

variable "ssh_name" {
  type        = string
  description = "The name of the ssh_key"
  default     = null
}

variable "ssh_public_key" {
  type        = string
  description = "ssh keys generated or obtained from DO"
  default     = null
}