variable "web_count" {
  description = "Number of web servers"
  type        = number
}

variable "region" {
  description = "The region to create the web servers in"
  type        = string
}

variable "size" {
  description = "The size of the web servers"
  type        = string
}

variable "image" {
  description = "The image to use for the web servers"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID to attach the web servers to"
  type        = string
}
