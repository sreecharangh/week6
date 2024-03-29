# Default tags
variable "default_tags" {
  default = {}
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

# Name prefix
variable "prefix" {
  type        = string
  description = "Name prefix"
}

# Provision public subnets in custom VPC
variable "private_cidr_blocks" {
  default     = ["10.1.64.0/18"]
  type        = list(string)
  description = "Public Subnet CIDRs"
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

variable "private_cidr_block" {
  type        = string
  description = "Private Subnet CIDRs"
}

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