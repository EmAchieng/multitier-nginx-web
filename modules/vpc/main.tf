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

resource "digitalocean_vpc" "vpc" {
  name   = var.vpc_name
  region = var.region

  lifecycle {
    ignore_changes = [
      name,
      region,
    ]
  }
}
