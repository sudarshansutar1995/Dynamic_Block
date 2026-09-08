output "rg_outputs" {
    value = { for k ,v in azurerm_resource_group.rg_group : k => v.name}
}