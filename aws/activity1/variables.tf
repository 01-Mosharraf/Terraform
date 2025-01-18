variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "This is the location of the region "
}

variable "vpc_cidr" {
  type        = string
  default     = "192.168.0.0/16"
  description = "This the default network cidr"
}

variable "subnets_info" {
  type = list(object({
    name = string
    cidr = string
    azs  = string
  }))
  default = [{
    name = "web-1"
    cidr = "10.0.1.0/24"
    azs  = "ap-south-1a"
  }]
}
