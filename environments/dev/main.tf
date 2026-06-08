terraform {
  required_version = ">=1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}
provider "aws" {
  region  = var.aws_region
  profile = "sundus_aws_admin"
}

data "aws_vpc" "default" {
  default = true
}

module "security_group" {
  source  = "../../modules/security-groups"
  sg_name = "soch-dev-sg"
  vpc_id  = data.aws_vpc.default.id
}
module "ec2" {
  source        = "../../modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  sg_id         = module.security_group.sg_id
}

# Testing GitHub Actions Pipeline triggering