# Terraform configuration files for provisioning a basic Kubernetes infrastructure on Digital Ocean

## Infrastructure summary 

- 1 Droplet for a Kubernetes master node
- 2 Droplets for a Kubernetes worker nodes
- 1 VPC
- A Digital Ocean project that contains all of these resources

## Terraform code structure

```
|--+ root module
   +- ssh module (generated locally or retrived from a ssh_key already provisioned)
   +- droplet module 
   +- tag module
   +- vpc module
   +- project module
```

## Basic usage 

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

![composition](https://github.com/mmorancassy/terraform-do-k8infra/images/terraform-do-k8s.jpg "Terraform composition")
 