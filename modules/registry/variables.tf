# Registry variables

variable "name" {
  type        = string
  description = "The name of the container_registry"
}

variable "subscription_tier_slug" {
  type        = string
  description = "The slug identifier for the subscription tier to use"
}

variable "region" {
  type        = string
  description = "The slug identifier of for region where registry data will be stored"
}