terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  vpc_id = "vpc-0106c9c6aa5b26687"
}
