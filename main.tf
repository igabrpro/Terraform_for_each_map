terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.13.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}


resource "aws_vpc" "main" {
  for_each   = var.vpc
  cidr_block = each.value
  tags = {
    "name" = each.key
  }
}