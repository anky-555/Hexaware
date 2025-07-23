resource "azurerm_storage_container" "hexsc" {
    for_each = var.sc
  name = each.value.name
  storage_account_name = each.value.storage_account_name
  container_access_type = each.value.container_access_type
}