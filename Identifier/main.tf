resource "aws_instance" "terraform_lab_instance" {
    region = "us-east-1"
    ami = "ami-0d5eff06f840b45e9"
}

variable "instance_type" {
    type = string
    default = "t2.medium"
}

output "instance_id" {
    value = aws_instance.terraform_lab_instance.id
}