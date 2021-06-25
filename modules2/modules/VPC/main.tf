# Provision VPC Resource

resource "aws_vpc" "TerraformLab-VPC" {
    cidr_block = var.cidr_block_from_variablesfile

    tags = {
        Name = "TerraformLab-VPC"
    }
}