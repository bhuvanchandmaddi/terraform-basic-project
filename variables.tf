variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR of the vpc"
}
variable "public_subnets_cidrs" {
  type        = list(any)
  default     = ["192.0.1.0/24", "192.0.2.0/24", "192.0.3.0/24"]
  description = "Cidr's of public subnets"
}

variable "private_subnets_cidrs" {
  type        = list(any)
  default     = ["192.0.4.0/24", "192.0.5.0/24", "192.0.6.0/24"]
  description = "Cidr's of private subnets"
}

# to do the same for availabilty zones



