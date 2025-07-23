rgs = {
    rg1 = {
        name     = "hexa-dev-rg"
        location = "East US"
    }
  }

sas = {
    sa1 = {
        name = "hexadevsa"
        location = "East US"
        resource_group_name = "hexa-dev-rg"
    }
}

scs = {
  sc1 = {
    name = "sc-hex-dev"
    storage_account_name = "hexadevsa"
    container_access_type = "private"
  }
}

vnets = {
  vnet1 = {
    name = "vnet-hex-dev"
    resource_group_name = "hexa-dev-rg"
    location = "East US"
  }
}

subnets = {
  subnet1 = {
    name = "subnet-hex-dev"
    resource_group_name = "hexa-dev-rg"
    virtual_network_name = "vnet-hex-dev"
  }
}

