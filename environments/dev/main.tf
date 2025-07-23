module "azurerm_resource_group" {
    source = "../../modules/1. azurerm_resource_group"
    rg = var.rgs
}

module "azurerm_storage_account" {
    depends_on = [ module.azurerm_resource_group ]
    source = "../../modules/2. azurerm_storage_account"
    sa = var.sas
}

module "azurerm_storage_container" {
    depends_on = [ module.azurerm_storage_account ]
    source = "../../modules/3. azurerm_storage_container"
    sc = var.scs
}

module "azurerm_virtual_network" {
    depends_on = [ module.azurerm_resource_group ]
    source = "../../modules/4. azurerm_vnet"
    vnet = var.vnets
}

module "azurerm_subnet" {
    depends_on = [ module.azurerm_virtual_network ]
    source = "../../modules/5. azurerm_subnet"
    subnet = var.subnets
}



