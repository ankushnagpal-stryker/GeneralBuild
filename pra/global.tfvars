## Location of the server##
location="northeurope"

## Resource Group 
RG="northeurope-smart-server-dev-test"

## Subscription Details
subscription="240418e1-c468-4edf-820a-a66e2e0b671e"


## Details of  Storageacoount for boot diagonistcs
tags_map={
        Environment = "DEV"
        Department = "Finance"
}

##Virtual network

vnet = {

  "name" = "mscg-shrdsvc-vnet"
  "address_space" = "10.8.12.0/13"

  "subnet1_name" = "ase_subnet"
  "subnet1_address" = "10.8.12.0/24"

   "subnet2_name" = "ase_subnet"
  "subnet2_address" = "10.8.13.0/26"

   "subnet3_name" = "apim_subnet"
  "subnet3_address" = "10.8.13.32/26"

   "subnet4_name" = "ase_subnet"
  "subnet4_address" = "10.8.13.64/26"
}
