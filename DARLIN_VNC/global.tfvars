subscription_id="a0f53cd3-99ec-44df-8b67-9b01fb941ae8"
location="eastus2"
RG="RG-DARLIN-DEV"
Environment = "DEV"
Cost_Center = 1032
StorageAccountid="https://darlinappstoraccount.blob.core.windows.net/"
tags_map={
        Environment = "DEV"
        Cost_Center = "1032"
}


nwprefix={
       nwrg = "USEast2-HC-VDC-PRD-Networking"
       name = "USEast2-HC-VDC-Spoke-10.197.60.0-23"
       address = "10.197.60.0/23"
}

subnet={
        app = "Workloads"
        address = "10.197.60.0/24"
}

nsgprefix={
      name = "Default-NSG-Well-Known-Ports"
      nsgrg = "USEast2-HC-VDC-PRD-Networking"
            
}

username = "sykrheladmin"
rsa_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSFGRvJ6F4kZy5pH1trryUNyOuAngCSXVnkIxnerVcbbamqVEKuYzXvIENhT8EPd4SrSu74XF2uxgXIwsv+howxeTrVkfTxqqMxu/RXzph7WCWpgOunE/N+teuOV9xq/fh0oopyh46rSeyZvvcArzfaRUdcmkDuDaQpt+mZ3s6mWp87Whm8mb3SrYk4wlB+FAGzlg8MSW21lymX8zGZrZ2CoDjOUums33bllyoVxqPBUL8kQOcthELU4giPNsbCFp20OyB6yc5ribb/H71LxpRHwKhP5epED9Ah6hFrcdVVXQKaenhdnszn7U1IzunlFkoUCPY/yWaT/cc12zR/Hyx sykrheladmin@bldlxadm02"
vms = {
    
    "azumkvncd01" = {
    size = "Standard_D2as_v5"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/RHEL/images/RHEL8.4/versions/8.4.0"
      disks = {
        "app_0" = {
          size                 = 128
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
      }
      
    }      
}
