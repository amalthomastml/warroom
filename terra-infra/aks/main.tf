terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-caption-eus"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "learnaks"

  default_node_pool {
    name       = "primarybase"
    node_count = 1  # Kept at 1 node to protect your trial budget
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }
}
