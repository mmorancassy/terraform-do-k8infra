variable "project_name" {
  type        = string
  description = "The name of the Digital Ocean project"  
}

variable "project_description" {
  type        = string
  description = "A brief description of the Digital Ocean project"  
  default     = "A project that contains a Kubernetes cluster"    
}

variable "project_purpose" {
  type        = string
  description = "The purpose of this project"  
  default     = "Testing"
}

variable "project_environment" {
  type        = string
  description = "The environment of the project's resources"  
  default     = "Development"
}

# Gets the ouptut from the droplet

variable "project_resources" {
  type        = set(string)
  description = "Kubernetes droplet urn"
}