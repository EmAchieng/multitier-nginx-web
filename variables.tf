variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "region" {
  description = "The region to create resources in"
  type        = string
}

variable "web_count" {
  description = "Number of web servers"
  type        = number
}

variable "web_size" {
  description = "The size of the web servers"
  type        = string
}

variable "web_image" {
  description = "The image to use for the web servers"
  type        = string
}

variable "lb_name" {
  description = "The name of the load balancer"
  type        = string
}

variable "db_name" {
  description = "The name of the database cluster"
  type        = string
}

variable "db_engine" {
  description = "The database engine to use"
  type        = string
}

variable "db_version" {
  description = "The version of the database engine"
  type        = string
}

variable "db_size" {
  description = "The size of the database cluster"
  type        = string
}

variable "db_node_count" {
  description = "The number of nodes in the database cluster"
  type        = number
}

variable "cache_name" {
  description = "The name of the cache cluster"
  type        = string
}

variable "cache_size" {
  description = "The size of the cache cluster"
  type        = string
}

variable "cache_node_count" {
  description = "The number of nodes in the cache cluster"
  type        = number
}

variable "cache_version" {
  description = "The version of the cache engine"
  type        = string
}

variable "alert_name" {
  description = "The name of the alert"
  type        = string
}

variable "alert_type" {
  description = "The type of the alert"
  type        = string
}

variable "alert_description" {
  description = "The description of the alert"
  type        = string
}

variable "compare" {
  description = "The comparison operator for the alert"
  type        = string
}

variable "value" {
  description = "The value to compare against"
  type        = number
}

variable "window" {
  description = "The time window for the alert"
  type        = string
}

variable "tags" {
  description = "The tags to apply the alert to"
  type        = list(string)
}

variable "alert_email" {
  description = "The email to send alerts to"
  type        = string
}

# variable "vpc_network_range" {
#   description = "The IP range for the VPC"
#   type        = string
#   default     = "10.115.0.0/20" 
# }
