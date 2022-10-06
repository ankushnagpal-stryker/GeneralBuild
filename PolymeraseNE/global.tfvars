subscription_id="a0f53cd3-99ec-44df-8b67-9b01fb941ae8"
location="northeurope"
RG="RSG-Polymerase-NEU"
Environment = "DEV"
Cost_Center = 1001
IDName="anomalicci"
StorageAccountid="https://polymeraseacount.blob.core.windows.net/"
tags_map={
        Environment = "DEV"
        Cost_Center = "1001"
}


nwprefix={
       nwrg = "NorthEurope-HC-VDC-PRD-Networking"
       name = "NorthEurope-HC-VDC-Spoke-10.195.68.0-23"
       address = "10.195.68.0/23"
}

nsgprefix={
      name = "Default-NSG-Well-Known-Ports"
      nsgrg = "USEast2-HC-VDC-PRD-Networking"
            
}
subnet={
        app = "Workloads"
        address = "10.195.68.0/24"
}
username = "sykrheladmin"
rsa_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSFGRvJ6F4kZy5pH1trryUNyOuAngCSXVnkIxnerVcbbamqVEKuYzXvIENhT8EPd4SrSu74XF2uxgXIwsv+howxeTrVkfTxqqMxu/RXzph7WCWpgOunE/N+teuOV9xq/fh0oopyh46rSeyZvvcArzfaRUdcmkDuDaQpt+mZ3s6mWp87Whm8mb3SrYk4wlB+FAGzlg8MSW21lymX8zGZrZ2CoDjOUums33bllyoVxqPBUL8kQOcthELU4giPNsbCFp20OyB6yc5ribb/H71LxpRHwKhP5epED9Ah6hFrcdVVXQKaenhdnszn7U1IzunlFkoUCPY/yWaT/cc12zR/Hyx sykrheladmin@bldlxadm02"
vms = {
    
    "azusqugdrq02" = {
    size = "Standard_D4s_v4"
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