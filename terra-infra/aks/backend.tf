terraform {
  backend "azurerm" {
    resource_group_name  = "tf-state-rg"
    storage_account_name = "tfstatesec" # Replace with your unique storage account name
    container_name       = "core-infra-state"
    key                  = "aks.terraform.tfstate"
    use_oidc             = true
  }
}
