provider "aws" {
region = "us-east-1"
profile = "voclabs/user2346899=Sree_Charan_Erupaka"
}


# Module to deploy basic networking 
module "vpc-dev" {
  #source = "git::https://github.com/sreecharangh/week6/tree/main/Session%201/01_task1_start/modules/aws_network"
  #source = "git::https://github.com/sreecharangh/week6.git"
  source = "../../../modules/aws_network"
  #source              = "git@github.com:igeiman/aws_network.git"
  env                 = var.env
  vpc_cidr            = var.vpc_cidr
  private_cidr_block = var.private_subnet_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  prefix              = var.prefix
  default_tags        = var.default_tags
}

# Retrieve global variables from the Terraform module
module "globalvars"{
  #source = "git::https://github.com/sreecharangh/week6/tree/main/Session%201/01_task1_start/modules/globalvars"
  #source = "git::https://github.com/sreecharangh/week6.git"
  source = "../../../modules/globalvars"
  
}

# Define tags locally
locals {
  default_tags = merge(module.globalvars.default_tags, { "env" = var.env })
  prefix = module.globalvars.prefix
  name_prefix  = "${local.prefix}-${var.env}"
}