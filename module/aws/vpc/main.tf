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
  region = var.region
  shared_credentials_files = var.shared_credentials_files
  profile                  = var.profile
}

resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block

  tags = {
    Name = var.name
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr_block_subnet

  tags = {
    Name = "subnet-${var.name}"
  }
}