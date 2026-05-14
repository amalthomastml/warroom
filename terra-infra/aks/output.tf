output "aks_cluster_name" {
  value       = azurerm_kubernetes_cluster.aks.name
  description = "The name of your newly provisioned AKS cluster"
}

output "aks_cluster_endpoint" {
  value       = azurerm_kubernetes_cluster.aks.kube_config.0.host
  description = "The secure endpoint used to talk to the cluster API"
}
