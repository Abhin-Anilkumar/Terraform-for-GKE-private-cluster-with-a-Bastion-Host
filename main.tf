module "cluster" {
  source                 = "./modules/cluster"
  roles                  = var.roles
  master_ipv4_cidr_block = var.master_ipv4_cidr_block
  workern_disksize       = var.workern_disksize
  workern_disktype       = var.workern_disktype
  workern_imagetype      = var.workern_imagetype
  workern_type           = var.workern_type
  cluster_name           = var.cluster_name
  project_id             = var.project_id
  accounts               = var.accounts
  nodepool_name          = var.nodepool_name
  subnet_names           = var.subnet_names
  vpc_name               = var.vpc_name
  cidr_ranges            = var.cidr_ranges
  depends_on             = [module.vpc]
}


module "instance" {
  source       = "./modules/instance"
  zone         = var.zone
  vm_image     = var.vm_image
  vm_name      = var.vm_name
  vpc_name     = var.vpc_name
  subnet_names = var.subnet_names
  machine_type = var.machine_type
  email        = module.cluster.accounts[1]
  depends_on   = [module.vpc]
}

module "vpc" {
  source       = "./modules/vpc"
  cidr_ranges  = var.cidr_ranges
  nat_name     = var.nat_name
  vpc_name     = var.vpc_name
  project_id   = var.project_id
  router_name  = var.router_name
  subnet_names = var.subnet_names
  region = var.region
}


