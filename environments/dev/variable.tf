variable "rgs" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "sas" {
  type = map(object({
    name     = string
    location = string
    resource_group_name = string
  }))
}

variable "scs" {
  type = map(object({
    name = string
    storage_account_name = string
    container_access_type = string
  }))
}

variable "vnets" {
  type = map(object({
    name = string
    resource_group_name = string
    location = string
  })) 
}

variable "subnets" {
  type = map(object({
    name = string
    resource_group_name = string
     virtual_network_name = string
  }))
}

