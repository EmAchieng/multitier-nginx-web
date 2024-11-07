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

variable "region" {
  description = "The region to create the database cluster in"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID to attach the database cluster to"
  type        = string
}
