resource "azurerm_storage_account" "str_acc" {

  for_each = var.str_acc

  name                = each.key
  location            = each.value.location
  resource_group_name = each.value.rg_name

  account_tier              = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  account_kind             = each.value.account_kind
  access_tier               = each.value.access_tier
}