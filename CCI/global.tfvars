location="eastus2"
RG="RSG-KZO-Perforce"
subscription_id="d1d53b59-b625-4bf9-9c7e-0ade10b76d6b"
Environment = "DEV"
Cost_Center = 1392
SIDName="anomalicci"
StorageAccountid="https://medicalaccutestorage.blob.core.windows.net"
tags_map={
        Environment = "Test"
        Cost_Center = "1392"
}


nwprefix={
       nwrg = "USEast2-VDC-Spokes"
       name = "USEast2-VDC-Spoke-10.197.8.0-23"
       address = "10.197.8.0/23"
}

nsgprefix={
      name = "USEast2-VDC-Default-NSG"
      nsgrg = "Stryker-VDC-USA-1-NSG-RG"
            
}
subnet={
        app = "Subnet1"
        address = "10.197.8.0/24"
}
username = "sykrheladmin"
rsa_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSFGRvJ6F4kZy5pH1trryUNyOuAngCSXVnkIxnerVcbbamqVEKuYzXvIENhT8EPd4SrSu74XF2uxgXIwsv+howxeTrVkfTxqqMxu/RXzph7WCWpgOunE/N+teuOV9xq/fh0oopyh46rSeyZvvcArzfaRUdcmkDuDaQpt+mZ3s6mWp87Whm8mb3SrYk4wlB+FAGzlg8MSW21lymX8zGZrZ2CoDjOUums33bllyoVxqPBUL8kQOcthELU4giPNsbCFp20OyB6yc5ribb/H71LxpRHwKhP5epED9Ah6hFrcdVVXQKaenhdnszn7U1IzunlFkoUCPY/yWaT/cc12zR/Hyx sykrheladmin@bldlxadm02"
vms = {
    
    "azuanomalicci" = {
    size = "Standard_D2ads_v5"
    source_image_id = "/subscriptions/6352ed84-44f5-46cc-a0cb-ac8fd59b0f43/resourceGroups/RSG-Performance-Tools/providers/Microsoft.Compute/galleries/RHEL8.4Image/images/RHEL8.4.2/versions/8.4.2"
      disks = {
        "app_0" = {
          size                 = 256
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
        
      }
      
    }      
}