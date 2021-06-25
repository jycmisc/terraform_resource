terraform {
    backend "remote" {
        organization = "Lab"

        workspaces {
            name = "Lab"
        }
    }
}

# terraform init to push state to remote Terraform Cloud
# tfstate file's resource is blank
# run terraform apply --auto-approve to provision infrastructure
# pull remote state to local by `terraform state pull`
# push local state to remote state to local by `terraform state push` * not recommended