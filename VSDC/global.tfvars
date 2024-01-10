location="northeurope"
RG="RSG-VoceraUK-NEU-DEV-001"
subscription_id="056300f3-2d49-4366-95a1-fb1ae2d49f1b"
Environment = "DEV"
Cost_Center = 1392
SIDName="VSDC"
StorageAccountid="https://azurundevlogs.blob.core.windows.net/" 
tags_map={
        Environment = "DEV"
        Cost_Center = "1392"
}


nwprefix={
       nwrg = "North-Europe-Stryker-VDC-PRJ-Dev-Networking"
       name = "NorthEurope-VDC-PRJ-Dev-10.198.168.0-22"
       #address = "10.198.168.0/22"
}


nsgprefix={
      name = "Default-NSG-Well-Known-Ports"
               
}




### Replacing with subnet ID#################
/*
subnet={
        app = "Workloads"
        address = "10.198.159.0/24"
}
subnetApp={
        app = "App-Subnet"
        address = "10.197.32.0/25"
}
SubnetDB={
        app = "DB-Subnet"
        address = "10.197.32.128/25"
}
###code
*/
##Updated below Subnets same
DBSubnetid="/subscriptions/056300f3-2d49-4366-95a1-fb1ae2d49f1b/resourceGroups/North-Europe-Stryker-VDC-PRJ-Dev-Networking/providers/Microsoft.Network/virtualNetworks/NorthEurope-VDC-PRJ-Dev-10.198.168.0-22/subnets/Workloads"
AppSubnetid="/subscriptions/056300f3-2d49-4366-95a1-fb1ae2d49f1b/resourceGroups/North-Europe-Stryker-VDC-PRJ-Dev-Networking/providers/Microsoft.Network/virtualNetworks/NorthEurope-VDC-PRJ-Dev-10.198.168.0-22/subnets/Workloads"
################################################
username = "sykrheladmin"
rsa_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSFGRvJ6F4kZy5pH1trryUNyOuAngCSXVnkIxnerVcbbamqVEKuYzXvIENhT8EPd4SrSu74XF2uxgXIwsv+howxeTrVkfTxqqMxu/RXzph7WCWpgOunE/N+teuOV9xq/fh0oopyh46rSeyZvvcArzfaRUdcmkDuDaQpt+mZ3s6mWp87Whm8mb3SrYk4wlB+FAGzlg8MSW21lymX8zGZrZ2CoDjOUums33bllyoVxqPBUL8kQOcthELU4giPNsbCFp20OyB6yc5ribb/H71LxpRHwKhP5epED9Ah6hFrcdVVXQKaenhdnszn7U1IzunlFkoUCPY/yWaT/cc12zR/Hyx sykrheladmin@bldlxadm02"
vms = {
    
       
    "azuukvsdc01" = {
      size = "Standard_D8ds_v5"
	  ServerType  = "App" 
      source_image_id = "/subscriptions/91cbd599-d354-48e3-b7b9-380006e84af6/resourceGroups/RSG-SAP-TEST/providers/Microsoft.Compute/galleries/RHEL9/images/RHEL9.2_Image/versions/0.0.0"
        disks = {
      "data_0" = {
          size                 = 256
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }    
    }
  }
}