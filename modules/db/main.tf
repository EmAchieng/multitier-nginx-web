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

resource "digitalocean_database_cluster" "db" {
  name       = var.db_name
  engine     = var.db_engine
  version    = var.db_version
  size       = var.db_size
  region     = var.region
  node_count = var.db_node_count

  private_network_uuid = var.vpc_id
}
