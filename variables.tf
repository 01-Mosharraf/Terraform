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

variable "subnet_cidrs" {
  type        = list(string)
  default     = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
  description = "This is the subnet cidrs"

}

variable "subnet_azs" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b", "ap-south-1a", "ap-south-1b", ]
}

variable "subnet_name" {
  type    = list(string)
  default = ["app-1", "app-2", "db-1", "db-2"]
}