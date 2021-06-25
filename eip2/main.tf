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

resource "aws_instance" "EC2" {
    ami = "ami-0742b4e673072066f"
    instance_type = "t3.micro"

    tags = {
        Name = "EC2"
    }
}

resource "aws_eip" "web_ip" {
    instance = aws_instance.EC2.id
    vpc = true

    tags = {
        Name = "EIP"
    }
}
