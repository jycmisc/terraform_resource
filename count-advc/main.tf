provider "aws" {
  region = "us-east-1"
}

module "db" {
  source = "./db"
  server_names = ["maria","myql","mssql"]
}

output "private_ips" {
    value = module.db.PrivateIP
}