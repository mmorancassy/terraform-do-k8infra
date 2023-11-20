###########################################################################
##### input variables

variable "do_token" {}
variable "access_id" {}
variable "secret_key" {}

###########################################################################
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

###########################################################################
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

###########################################################################
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

###########################################################################
##### spaces bucket variables

variable "bucket_name" {
  type        = string
  description = "The name of the bucket"
  default     = "bucketstorage"
}

variable "bucket_region" {
  type        = string
  description = "Region in which the bucket is located"
  default     = "ams3"
}

variable "bucket_acl" {
  type        = string
  description = "Canned ACL applied on bucket creation"
  default     = "private"
}

variable "bucket_force_destroy" {
  type        = bool
  description = "Unless true, the bucket will only be destroyed if empty" 
  default     = true
}

###########################################################################
##### container registry variables

variable "registry_name" {
  type        = string
  description = "The name of the container_registry"
  default     = "k8sregistry"
}

variable "registry_subscription_tier_slug" {
  type        = string
  description = "The slug identifier for the subscription tier to use"
  default     = "starter"
}

variable "registry_region" {
  type        = string
  description = "The slug identifier of for region where registry data will be stored"
  default     = "ams3"
}

###########################################################################
##### project module variables

variable "project_name" {
  type        = string
  description = "The name of the project"
  default     = "kubernetes DEV cluster"
}

###########################################################################
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