# Terraform configuration files for provisioning a basic Kubernetes infrastructure on Digital Ocean

## Infrastructure summary 

- 1 Droplet for a Kubernetes master node
- 2 Droplets for a Kubernetes worker nodes
- 1 VPC
- 1 Bucket
- A Digital Ocean project that contains all of these resources

## Terraform code structure

```
|--+ root module
   +- ssh module (generated locally or retrived from a ssh_key already provisioned)
   +- droplet module 
   +- tag module
   +- vpc module
   +- bucket module
   +- project module
```

## Basic usage 

- It is possible to retrieve an existing ssh key stored in a Digital Ocean account, through a data source, or by generating it locally, just setting the variable "local_sshkey" to true. That ssh key allows access to all droplets via ssh.

```
variable "local_sshkey" {
  type        = bool
  description = "Determine whether to generate and load a local ssh_key, if set to true it does"
  default     = true
}
```

- Infrastructure plan and provision

```
> terraform init
> terraform plan -auto-approve
> terraform apply -auto-approve
```

- Infrastructure deletion

```
> terraform destroy 
```

## Composition

![composition](https://github.com/mmorancassy/terraform-do-k8infra/blob/main/images/terraform-do-k8s.jpg "Terraform composition")
 
