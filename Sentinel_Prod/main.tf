terraform {
  backend "azurerm" {
    subscription_id      = "d1d53b59-b625-4bf9-9c7e-0ade10b76d6b"
    resource_group_name  = "RG-UNIX-VDC"
    storage_account_name = "unixstatefiles"
    container_name       = "prodtfstatefiles"
    key                  = "SentinelAzure.tfstate"
     }
}
 
provider "azurerm" {
  # The "feature" block is required for AzureRM provider 2.x.
  # If you're using version 1.x, the "features" block is not allowed.
  version = "~>2.0"
  features {
      virtual_machine {
      delete_os_disk_on_deletion = true
    }
  }
  subscription_id = var.subscription_id
  skip_provider_registration = true
}

resource "azurerm_proximity_placement_group" "PPG" {
  name                = "azu-${var.Environment}-PPG-${var.SIDName}"
  location            = var.location
  resource_group_name = var.RG
  tags = {
       proj = var.Cost_Center
       env = var.Environment
     }
}

resource "azurerm_availability_set" "ASET-NE" {
  name = "AS-${var.SIDName}-NE"
  location            = var.location
  resource_group_name = var.RG
  proximity_placement_group_id = "${azurerm_proximity_placement_group.PPG.id}"

 tags = {
       proj = var.Cost_Center
       env = var.Environment
     }
}

resource "azurerm_availability_set" "ASET-SE2" {
  name = "AS-${var.SIDName}-SE2"
  location            = var.location
  resource_group_name = var.RG
  proximity_placement_group_id = "${azurerm_proximity_placement_group.PPG.id}"

 tags = {
       proj = var.Cost_Center
       env = var.Environment
     }
}

resource "azurerm_linux_virtual_machine" "VM" {
  for_each              = var.vms
  name                  = each.key
  availability_set_id   = substr(each.value.ServerType,0,2)== "SE" ? azurerm_availability_set.ASET-SE2.id : azurerm_availability_set.ASET-NE.id
  location              = var.location
  resource_group_name   = data.azurerm_resource_group.RG.name
  network_interface_ids = [azurerm_network_interface.NW[each.key].id]
  size                  = each.value.size
  disable_password_authentication = true
  admin_username        = "sykrheladmin"
  source_image_id       =  each.value.source_image_id
  os_disk {
    name                 = "${each.key}-OS-disk"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
	}
  boot_diagnostics {
        storage_account_uri = var.StorageAccountid
    }

  /*plan {
	name = "rhel-lvm87"
	publisher = "redhat"
	product = "rhel-byos"
  }
  */

  tags = {
        Environment = "${var.tags_map.Environment}"
        "Cost Center" = "${var.tags_map.Cost_Center}"
	}

  admin_ssh_key {
    username   = var.username
    public_key = var.rsa_key
	}
  
  }

  

resource "azurerm_managed_disk" "Datadisk" {
  for_each             = { for d in local.disks : join("_", [d.vm, d.disk]) => d }
  name                 = join("_", [ each.value.vm, each.value.disk ])
  location = var.location
  create_option = "Empty"
  resource_group_name = data.azurerm_resource_group.RG.name
  disk_size_gb         = each.value.size
  storage_account_type = each.value.storage_account_type
}
resource "azurerm_virtual_machine_data_disk_attachment" "attach_Datadisk" {
  for_each           = { for d in local.disks : join("_", [d.vm, d.disk]) => d }
  virtual_machine_id = azurerm_linux_virtual_machine.VM[each.value.vm].id
  managed_disk_id    = azurerm_managed_disk.Datadisk[each.key].id
  lun                = each.value.lun
  caching            = "None"
}

resource "azurerm_network_interface" "NW" {
  for_each                  = var.vms
  name                      = join("-", [ each.key, "mgt"])
  location                  = var.location
  resource_group_name       = data.azurerm_resource_group.RG.name
  enable_accelerated_networking  = true

  ip_configuration {
    name                          = "Primary"
    subnet_id                     = data.azurerm_subnet.subnet_app.id
    private_ip_address_allocation = "dynamic"

 }
}

data "azurerm_resource_group" "RG" {
  name = "${var.RG}"
}


data "azurerm_resource_group" "nwrg" {
  name = "${var.nwprefix.nwrg}"
}



data "azurerm_virtual_network" "vnet" {
  name                = "${var.nwprefix.name}"
  resource_group_name = "${data.azurerm_resource_group.nwrg.name}"
}

data "azurerm_subnet" "subnet_app" {
  name                 = "${var.subnet.app}"
  virtual_network_name = "${data.azurerm_virtual_network.vnet.name}"
  resource_group_name  = "${data.azurerm_resource_group.nwrg.name}"
}

resource "azurerm_virtual_machine_extension" "example" {
  for_each              = var.vms
  name                  = "hostname"
  virtual_machine_id   = azurerm_linux_virtual_machine.VM[each.key].id
  publisher            = "Microsoft.Azure.Extensions"
  type                 = "CustomScript"
  type_handler_version = "2.0"

  settings = <<SETTINGS
 {
  "commandToExecute": "/usr/bin/bash /root/tmstart.sh"
 }
SETTINGS
}


###Define NSG#########
/*
data "azurerm_network_security_group" "nsg" {
  name                = "${var.nsgprefix.name}"
  resource_group_name = "${var.nsgprefix.nsgrg}"
}

resource "azurerm_network_interface_security_group_association" "nic-nsg" {
  for_each                  = var.vms
  network_interface_id      = azurerm_network_interface.NW[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsg.id
}
*/