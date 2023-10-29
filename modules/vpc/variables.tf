variable "vpc_name" {
  type        = string
  description = "vpc name"
}

variable "vpc_region" {
  type        = string
  description = "vpc region, same as the pods"
}

variable "vpc_ip_range" {
  type        = string
  description = "vpc ip range"
}