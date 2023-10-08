output "cluster_resource_group" {
  value = azurerm_kubernetes_cluster.Devsu_AKS.resource_group_name
}

output "cluster_location" {
  value = azurerm_kubernetes_cluster.Devsu_AKS.location
}

output "cluster_name" {
  value = azurerm_kubernetes_cluster.Devsu_AKS.name
}

output "cluster_dns_prefix" {
  value = azurerm_kubernetes_cluster.Devsu_AKS.dns_prefix
}

output "cluster_nodepool_name" {
  value = azurerm_kubernetes_cluster.Devsu_AKS.default_node_pool[0].name
}

output "cluster_nodepool_size" {
  value = azurerm_kubernetes_cluster.Devsu_AKS.default_node_pool[0].vm_size
}

output "cluster_nodepool_node_count" {
  value = azurerm_kubernetes_cluster.Devsu_AKS.default_node_pool[0].node_count
}

output "cluster_kubernetes_version" {
  value = azurerm_kubernetes_cluster.Devsu_AKS.kubernetes_version
}

output "cluster_tags" {
  value = azurerm_kubernetes_cluster.Devsu_AKS.tags
}

output "client_key" {
  value = azurerm_kubernetes_cluster.Devsu_AKS.kube_config.0.client_key
  sensitive = true
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.Devsu_AKS.kube_config.0.client_certificate
  sensitive = true
}

output "cluster_ca_certificate" {
  value = azurerm_kubernetes_cluster.Devsu_AKS.kube_config.0.cluster_ca_certificate
  sensitive = true
}

output "cluster_username" {
  value = azurerm_kubernetes_cluster.Devsu_AKS.kube_config.0.username
  sensitive = true
}

output "cluster_password" {
  value = azurerm_kubernetes_cluster.Devsu_AKS.kube_config.0.password
  sensitive = true  
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.Devsu_AKS.kube_config_raw
  sensitive = true
}

output "host" {
  value = azurerm_kubernetes_cluster.Devsu_AKS.kube_config.0.host
  sensitive = true
}