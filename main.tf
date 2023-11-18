###########################################################################
##### ssh keys 

module "ssh" {
  source = "./modules/ssh"

  name         = var.ssh_name
  public_key   = var.ssh_public_key
  local_sshkey = var.local_sshkey
}

###########################################################################
##### tags

module "tags" {
  source = "./modules/tag"

  for_each = { for att in var.tag_attributes : att.name => att }

  name   = each.value.name
 }

###########################################################################
##### vpc

module "kubernetes_vpc" {
  source   = "./modules/vpc"

  vpc_name     = var.vpc_name
  vpc_region   = var.vpc_region
  vpc_ip_range = var.vpc_ip_range  
}

###########################################################################
##### nodes 

module "kubernetes_nodes" {
  source   = "./modules/droplet"

  for_each = { for att in var.node_attributes : att.name => att }

  name        = each.value.name
  os          = each.value.os
  region      = each.value.region
  size        = each.value.size   
  ssh_keys    = [module.ssh.ssh_keys]
  vpc_uuid    = module.kubernetes_vpc.id
  tags        = values(module.tags)[*].id
}

###########################################################################
##### bucket

module "bucket" {
  source  = "./modules/bucket"

  name           = var.bucket_name
  region         = var.bucket_region
  acl            = var.bucket_acl
  force_destroy  = var.bucket_force_destroy
}

###########################################################################
##### container registry

module "registry" {
  source =  "./modules/registry"

  name                   = var.registry_name
  subscription_tier_slug = var.registry_subscription_tier_slug
  region                 = var.registry_region
}

###########################################################################
##### digital ocean project 

module "terraform_project" {
  source            = "./modules/project"

  project_name      = var.project_name  
  project_resources = flatten([values(module.kubernetes_nodes)[*].droplet_urn, module.bucket.bucket_urn])

}


