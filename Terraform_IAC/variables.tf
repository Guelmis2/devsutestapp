variable client_id {}
variable client_secret {}
variable ssh_public_key {}

variable location {
    default = "eastus2"
}

variable node_count {
  default = 2
}

variable dns_prefix {
  default = "guelmisaksdevsu"
}

variable cluster_name {
  default = "Test_AKS"
}

variable resource_group {
  default = "Test_AKS_RG"
}