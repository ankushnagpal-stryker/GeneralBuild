location="eastus"
RG="RSG-CAE-PROD"
subscription_id="d1d53b59-b625-4bf9-9c7e-0ade10b76d6b"
Environment = "DEV"
Cost_Center = 1392
IDName="anomalicci"
StorageAccountid="https://hpcdigacnt.blob.core.windows.net"
tags_map={
        Environment = "Prod"
        Cost_Center = "1392"
}


nwprefix={
       nwrg = "USEast-VDC-Spokes"
       name = "USEast-VDC-Spoke-10.197.112.0-23"
       address = "10.197.112.0/23"
}

nsgprefix={
      name = "Default-NSG-Well-Known-Ports"
      nsgrg = "USEast-VDC-SolixProd-Networking"
            
}
subnet={
        app = "Workloads-1"
        address = "10.197.112.0/24"
}
username = "sykrheladmin"
rsa_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSFGRvJ6F4kZy5pH1trryUNyOuAngCSXVnkIxnerVcbbamqVEKuYzXvIENhT8EPd4SrSu74XF2uxgXIwsv+howxeTrVkfTxqqMxu/RXzph7WCWpgOunE/N+teuOV9xq/fh0oopyh46rSeyZvvcArzfaRUdcmkDuDaQpt+mZ3s6mWp87Whm8mb3SrYk4wlB+FAGzlg8MSW21lymX8zGZrZ2CoDjOUums33bllyoVxqPBUL8kQOcthELU4giPNsbCFp20OyB6yc5ribb/H71LxpRHwKhP5epED9Ah6hFrcdVVXQKaenhdnszn7U1IzunlFkoUCPY/yWaT/cc12zR/Hyx sykrheladmin@bldlxadm02"
vms = {
    
    "azucaehpc01" = {
    size = "Standard_D96ls_v5"
    source_image_id = "/subscriptions/5487a063-1d3b-4ad3-8583-01948e8fa375/resourceGroups/rg-mw-soa-dev-test/providers/Microsoft.Compute/galleries/RHEL79/images/RHEL7.9/versions/7.9.2"
      disks = {
        "app_0" = {
          size                 = 4096
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
        
      }
      
    }      
}