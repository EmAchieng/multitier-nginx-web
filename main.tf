terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable "digitalocean_token" {
  description = "DigitalOcean API token"
  type        = string
}

provider "digitalocean" {
  token = var.digitalocean_token
}

module "vpc" {
  source              = "./modules/vpc"
  vpc_name            = var.vpc_name
  region              = var.region
  digitalocean_token  = var.digitalocean_token
}

module "web" {
  source              = "./modules/web"
  web_count           = var.web_count
  region              = var.region
  size                = var.web_size
  image               = var.web_image
  vpc_id              = module.vpc.vpc_id
  digitalocean_token  = var.digitalocean_token
}

module "lb" {
  source              = "./modules/lb"
  lb_name             = var.lb_name
  region              = var.region
  digitalocean_token  = var.digitalocean_token
}

module "db" {
  source              = "./modules/db"
  db_name             = var.db_name
  db_engine           = var.db_engine
  db_version          = var.db_version
  db_size             = var.db_size
  db_node_count       = var.db_node_count
  region              = var.region
  vpc_id              = module.vpc.vpc_id
  digitalocean_token  = var.digitalocean_token
}

module "cache" {
  source              = "./modules/cache"
  cache_name          = var.cache_name
  cache_size          = var.cache_size
  cache_node_count    = var.cache_node_count
  cache_version       = var.cache_version
  region              = var.region
  vpc_id              = module.vpc.vpc_id
  digitalocean_token  = var.digitalocean_token
}