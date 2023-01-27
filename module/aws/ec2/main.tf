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
  access_key = var.access_key
  secret_key = var.secret_key
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