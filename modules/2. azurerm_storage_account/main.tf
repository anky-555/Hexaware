resource "azurerm_storage_account" "hexsa" {
    for_each = var.sa
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    account_replication_type = "LRS"
    account_tier = "Standard"
}