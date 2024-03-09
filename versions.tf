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

provider "null" {
  # Configuration options
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = var.provider_azurerm_features_keyvault.purge_soft_delete_on_destroy
      recover_soft_deleted_key_vaults = true
    }
  }
}
