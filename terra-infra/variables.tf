variable "resource_group_name" {
  type    = string
  default = "aks-eastus-tf"
}

variable "location" {
  type    = string
  default = "East US" # Verify your free trial has core quotas in this region
}

variable "vm_size" {
  type    = string
  default = "Standard_B2s" # Strict 2-vCPU limit for your Free Trial account
}
