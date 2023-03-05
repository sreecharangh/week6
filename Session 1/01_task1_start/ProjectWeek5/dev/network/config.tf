terraform {
  provider "aws" {
region = "us-east-1"
profile = "voclabs/user2346899=Sree_Charan_Erupaka"
}
  backend "s3" {
    bucket = "dev-acs730-week6-sreecharangh"      // Bucket where to SAVE Terraform State
    key    = "dev-network/terraform.tfstate" // Object name in the bucket to SAVE Terraform State
    region = "us-east-1"                     // Region where bucket is created
  }
}