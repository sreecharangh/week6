# Default tags
variable "default_tags" {
  default = {
    "Owner" = "Irina",
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

# Name prefix
variable "prefix" {
  type        = string
  default     = "week5"
  description = "Name prefix"
}

# Provision public subnets in custom VPC
variable "public_subnet_cidrs" {
  default     = "10.1.0.0/22"
  type        = string
  description = "Public Subnet CIDRs"
}


variable "private_subnet_cidr" {
  default     = "10.1.32.0/19"
  type        = string
  description = "Private Subnet CIDR"
}

# VPC CIDR range
variable "vpc_cidr" {
  default     = "10.1.0.0/16"
  type        = string
  description = "VPC to host static web site"
}

# Variable to signal the current environment 
variable "env" {
  default     = "dev"
  type        = string
  description = "Deployment Environment"
}

