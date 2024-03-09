terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.47.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.1"
    }
  }
  #required_providers {
  #}
  required_version = ">= 1.1.0"
  cloud {
    # The name of your Terraform Cloud organization.
    organization = "Learning1441"
    #
    #         # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "terraform"
    }
  }
}
