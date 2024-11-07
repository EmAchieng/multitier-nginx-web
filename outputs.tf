output "web_ips" {
  value = module.web.web_ips
}

output "lb_ip" {
  value = module.lb.lb_ip
}

output "db_uri" {
  value = module.db.db_uri
  sensitive = true 
}

output "cache_uri" {
  value = module.cache.cache_uri
  sensitive = true 
}
