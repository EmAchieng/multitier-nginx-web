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

variable "region" {
  description = "The region to create resources in"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}
