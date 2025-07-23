terraform {
    required_providers{
        azurerm = {
            source = "hashicorp/azurerm"
            version = "3.14.0"
        }
        random = {
            source = "hashicorp/random"
        }
    }

    # backend "azurerm" {
    #     resource_group_name = "hexa-dev-rg"
    #     storage_account_name = "hexadevsa"
    #     container_name       = "sc-hex-dev"                               
    #     key                  = "dev.terraform.tfstate" 
    # }
}

provider "azurerm" {
    features { }
    subscription_id = "adfaabb9-2ed7-4536-8ba6-3d838c6791bf"
}

