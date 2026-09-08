resource "azurerm_resource_group" "rg_group" {
  for_each =  var.rg_group
  name = each.key
  location = each.value.location 
}