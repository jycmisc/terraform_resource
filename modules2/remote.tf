terraform {
    backend "remote" {
        organization = "awsiacCICDE"

        workspaces {
            name = "TerraformLab"
        }
    }
}