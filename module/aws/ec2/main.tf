terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.51.0"
    }
  }
}

provider "aws" {
  # Configuration options 
  shared_credentials_files = var.shared_credentials_files
  profile                  = var.profile
  region = var.region
}

resource "aws_instance" "vm-test" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.name
  }
}