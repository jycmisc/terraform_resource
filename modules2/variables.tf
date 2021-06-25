variable "cidr" {
    type = string
    description = "Terraform VPC CIDR Range"
}

variable "cidr_subnet1" {
    type = string
    description = "Terraform Subnet 1 CIDR Range"
}

# # String
# variable "vpc_name" {
#     type = string
# }

# # Number
# variable "vpc_number" {
#     type = number
# }

# # Number
# variable "vpc_exists" {
#     type = bool
# }

# # List
# variable "vpc_list" {
#     type = list(string)
# }

# # Tuple
# variable "vpc_tuple" {
#     type = tuple(string,number,string)
# }

# # Map
# variable "vpc_map" {
#     type = Map
# }

# # Object
# variable "vpc_object" {
#     type = object({Key1=string,Key2=number})
# }