output "web_ips" {
  value = digitalocean_droplet.web.*.ipv4_address
}

output "droplet_ids" {
  value = digitalocean_droplet.web.*.id
} 
