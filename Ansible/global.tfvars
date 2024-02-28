location="eastus2"
RG="rg-unix-vdc"
subscription_id="d1d53b59-b625-4bf9-9c7e-0ade10b76d6b"
Environment = "Prod"
Cost_Center = 1392
IDName="anomalicci"
StorageAccountid="https://rgunixvdcdiag.blob.core.windows.net"
tags_map={
        Environment = "Prod"
        Cost_Center = "1392"
}


nwprefix={
       nwrg = "USEast2-VDC-Spokes"
       name = "USEast2-VDC-Spoke-10.197.8.0-23"
       address = "10.197.8.0/23"
}

nsgprefix={
      name = "Default-NSG-Well-Known-Ports"
      nsgrg = "USEast2-VDC-Spokes"
            
}
subnet={
        app = "Subnet1"
        address = "10.197.8.0/24"
}
username = "sykrheladmin"
rsa_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSFGRvJ6F4kZy5pH1trryUNyOuAngCSXVnkIxnerVcbbamqVEKuYzXvIENhT8EPd4SrSu74XF2uxgXIwsv+howxeTrVkfTxqqMxu/RXzph7WCWpgOunE/N+teuOV9xq/fh0oopyh46rSeyZvvcArzfaRUdcmkDuDaQpt+mZ3s6mWp87Whm8mb3SrYk4wlB+FAGzlg8MSW21lymX8zGZrZ2CoDjOUums33bllyoVxqPBUL8kQOcthELU4giPNsbCFp20OyB6yc5ribb/H71LxpRHwKhP5epED9Ah6hFrcdVVXQKaenhdnszn7U1IzunlFkoUCPY/yWaT/cc12zR/Hyx sykrheladmin@bldlxadm02"
vms = {
    
    "azuapphlx1" = {
    size = "Standard_D4s_v5"
    source_image_id = "/subscriptions/91cbd599-d354-48e3-b7b9-380006e84af6/resourceGroups/RSG-SAP-TEST/providers/Microsoft.Compute/galleries/RHEL9/images/RHEL9.2_Image/versions/0.0.0"
      disks = {
        "app_0" = {
          size                 = 128
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
        
      }
      
    }      
     "azuappclx1" = {
    size = "Standard_D4s_v5"
    source_image_id = "/subscriptions/91cbd599-d354-48e3-b7b9-380006e84af6/resourceGroups/RSG-SAP-TEST/providers/Microsoft.Compute/galleries/RHEL9/images/RHEL9.2_Image/versions/0.0.0"
      disks = {
        "app_0" = {
          size                 = 128
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
        
      }
      
    }      
}