location="eastus"
RG="RSG-Tenable-SC"
subscription_id="5487a063-1d3b-4ad3-8583-01948e8fa375"
Environment = "DEV"
Cost_Center = 1392
IDName="anomalicci"
StorageAccountid="https://tenabledigacnt.blob.core.windows.net"
tags_map={
        Environment = "DEV"
        Cost_Center = "1392"
}


nwprefix={
       nwrg = "USEast-DevTest-Networking"
       name = "USEast-VDC-DevTest-Spoke-10.197.115.0-24"
       address = "10.197.115.0/24"
}

nsgprefix={
      name = "Default-NSG-Well-Known-Ports"
      nsgrg = "USEast-DevTest-Networking"
            
}
subnet={
        app = "Workloads"
        address = "10.197.115.0/24"
}
username = "sykrheladmin"
rsa_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSFGRvJ6F4kZy5pH1trryUNyOuAngCSXVnkIxnerVcbbamqVEKuYzXvIENhT8EPd4SrSu74XF2uxgXIwsv+howxeTrVkfTxqqMxu/RXzph7WCWpgOunE/N+teuOV9xq/fh0oopyh46rSeyZvvcArzfaRUdcmkDuDaQpt+mZ3s6mWp87Whm8mb3SrYk4wlB+FAGzlg8MSW21lymX8zGZrZ2CoDjOUums33bllyoVxqPBUL8kQOcthELU4giPNsbCFp20OyB6yc5ribb/H71LxpRHwKhP5epED9Ah6hFrcdVVXQKaenhdnszn7U1IzunlFkoUCPY/yWaT/cc12zR/Hyx sykrheladmin@bldlxadm02"
vms = {
    
    "azutenabled01" = {
    size = "Standard_D8ds_v5"
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