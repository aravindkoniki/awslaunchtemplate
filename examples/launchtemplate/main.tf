provider "aws" {
  region = var.region
}

data "aws_caller_identity" "current" {}

module "template" {
  source = "../../module"

  #general
  prefix = var.prefix
  name   = var.name

  #template configure
  block_device_mappings = [{
    device_name = "/dev/sda1"
    ebs = {
      volume_size = 20
      volume_type = "gp3"
    }
  }]
  ami_id                  = var.ami_id
  ebs_optimized           = var.ebs_optimized
  instance_type           = var.instance_type
  disable_api_termination = true #enables EC2 instance termination protection
  enable_monitoring       = true
  tags                    = var.tags
}