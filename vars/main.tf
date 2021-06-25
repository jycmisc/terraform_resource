provider "aws" {
  region = "us-east-1"
}

variable "number_of_servers" {
  type = number
}

# Method 1: name the variable file terraform.tfvars
# Method 2: name the variable file myfile.auto.tfvars
# Method 3: name the vairable file myfile.tfvars. Run `terraform plan -var-file="myfile.tfvars"` to reference the variable file
# Method 4: declare variable in variables.tf and terraform.tfvars

variable "cidr" {
  type = string
  description = "variable has value for VPC CIDR range"
}

resource "aws_instance" "ec2" {
    ami = "ami-0742b4e673072066f"
    instance_type = "t2.micro"
    count = var.number_of_servers
}
