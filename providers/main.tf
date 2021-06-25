# https://registry.terraform.io/browse/providers
# Know provider requirement

terraform {
    required_providers {
        aws = {
            source = "hashcorp/aws"
            version = "~> 3.0"
        }
    }
}

# Know provider configuration

provider "aws" {
    # configuration arguments
    region = "us-east-1"
}