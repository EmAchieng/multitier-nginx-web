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

resource "digitalocean_database_cluster" "cache" {
  name       = var.cache_name
  engine     = "redis"
  version    = var.cache_version
  size       = var.cache_size
  region     = var.region
  node_count = var.cache_node_count

  private_network_uuid = var.vpc_id
}
