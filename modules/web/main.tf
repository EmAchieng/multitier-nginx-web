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

resource "digitalocean_droplet" "web" {
  count  = var.web_count
  name   = "web-${count.index}"
  region = var.region
  size   = var.size
  image  = var.image

  vpc_uuid = var.vpc_id

  tags = ["web"]

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y nginx
              systemctl start nginx
              systemctl enable nginx

              # Create a simple HTML page
              echo "<html><body><h1>Hello World from Nginx: Your Server is Up and Running! </h1></body></html>" > /var/www/html/index.html

              # Ensure Nginx is serving the HTML page
              systemctl restart nginx
              EOF
}