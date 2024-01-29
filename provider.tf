terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}

provider "aws" {
  # Configuration options
    region = "us-east-1"
    # region = "us-west-2"
    
}


