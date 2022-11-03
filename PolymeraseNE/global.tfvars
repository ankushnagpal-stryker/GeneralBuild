subscription_id="a0f53cd3-99ec-44df-8b67-9b01fb941ae8"
location="NorthEurope"
RG="RSG-Polymerase-NEU"
Environment = "DEV"
Cost_Center = 1001
StorageAccountid="https://polymeraseacount.blob.core.windows.net/"
tags_map={
        Environment = "DEV"
        Cost_Center = "1001"
}


nwprefix={
       nwrg = "NorthEurope-HC-VDC-PRD-Networking"
       name = "NorthEurope-HC-VDC-Spoke-10.198.138.0-23"
       address = "10.198.138.0/23"
}

/*
nsgprefix={
      name = "Default-NSG-Well-Known-Ports"
      nsgrg = "USEast2-HC-VDC-PRD-Networking"
            
}
*/
subnet={
        app = "Workloads"
        address = "10.198.138.0/24"
}
username = "sykrheladmin"
rsa_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSFGRvJ6F4kZy5pH1trryUNyOuAngCSXVnkIxnerVcbbamqVEKuYzXvIENhT8EPd4SrSu74XF2uxgXIwsv+howxeTrVkfTxqqMxu/RXzph7WCWpgOunE/N+teuOV9xq/fh0oopyh46rSeyZvvcArzfaRUdcmkDuDaQpt+mZ3s6mWp87Whm8mb3SrYk4wlB+FAGzlg8MSW21lymX8zGZrZ2CoDjOUums33bllyoVxqPBUL8kQOcthELU4giPNsbCFp20OyB6yc5ribb/H71LxpRHwKhP5epED9Ah6hFrcdVVXQKaenhdnszn7U1IzunlFkoUCPY/yWaT/cc12zR/Hyx sykrheladmin@bldlxadm02"
vms = {
    
    "azusqugdrq02" = {
    size = "Standard_D4s_v4"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/RHEL/images/RHEL8.5"
      disks = {
        "app_0" = {
          size                 = 256
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
        "app_1" = {
          size                 = 256
          storage_account_type = "Premium_LRS"
          lun                  = 1
        }
      }
      
    }      
}
