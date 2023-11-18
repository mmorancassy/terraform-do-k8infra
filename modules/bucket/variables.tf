# Bucket variables

variable "name" {
  type        = string
  description = "The name of the bucket"
}

variable "region" {
  type        = string
  description = "Region in which the bucket is located"
}

variable "acl" {
  type        = string
  description = "Canned ACL applied on bucket creation"
}

variable "force_destroy" {
  type        = bool
  description = "Unless true, the bucket will only be destroyed if empty" 
}