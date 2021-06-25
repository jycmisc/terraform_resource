# Goal: Bring exisiting infrastructure under Terraform Control

terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

# Run Terraform Init
# Run Terraform Plan
# Update the VPC information

resource "aws_vpc" "MyLab-VPC" {
    cidr_block = "172.20.0.0/16"

    tags = {
        Name = "MyLab-VPC"
    }
}

# Run Terraform import aws_vpc.MyLab-VPC vpc-0898c9133f231vv2
# Run Terraform plan