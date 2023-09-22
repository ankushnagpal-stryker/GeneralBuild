variable "location" {
  type    = string
}

variable "RG" {
  type     = string
}



variable "subscription" {
  type        = string
  description = "The Azure subscription id used to provision resources."
}



variable "tags_map" {
  description = "Map of tags and values"
 type        = map(string)
}

variable "vnet" {
    description = "Subnet for virtual network"
    type = map(any)
    
  
}