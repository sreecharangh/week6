
# Module to deploy basic networking 
module "vpc-dev" {
  source = "/home/ec2-user/environment/week6/Session\ 1/01_task1_start/modules/aws_network"
  #source              = "git@github.com:igeiman/aws_network.git"
  env                 = var.env
  vpc_cidr            = var.vpc_cidr
  private_cidr_blocks = var.public_subnet_cidrs
  prefix              = var.prefix
  default_tags        = var.default_tags
}

# Retrieve global variables from the Terraform module
module "globalvars"{
  source = "/home/ec2-user/environment/week6/Session\ 1/01_task1_start/modules/globalvars"
}

# Define tags locally
locals {
  default_tags = merge(module.globalvars.default_tags, { "env" = var.env })
  prefix = module.globalvars.prefix
  name_prefix  = "${local.prefix}-${var.env}"
}