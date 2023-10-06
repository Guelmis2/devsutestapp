resource "azurerm_resource_group" "resource_group" {
  name     = "Devsu_${var.resource_group}"
  location = var.location
}

provider "azurerm" {

  features {}
}

resource "azurerm_kubernetes_cluster" "Devsu_AKS" {
  name                = "Devsu_${var.cluster_name}"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  dns_prefix          = var.dns_prefix

  linux_profile {
    admin_username = "guelmisdevops"

    ssh_key {
      key_data = file(var.ssh_public_key)
    }
  }

  default_node_pool {
    name            = "agentpool"
    node_count      = var.node_count
    vm_size         = "standard_b2ms"
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  tags = {
    Environment = "Dev"
  }
}
