resource "digitalocean_firewall" "web_firewall" {
  name = "web-firewall"

  droplet_ids = flatten([module.web.*.droplet_ids])

  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol         = "tcp"
    port_range       = "all"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol         = "udp"
    port_range       = "all"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
} 
