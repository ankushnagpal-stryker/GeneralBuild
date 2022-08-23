subscription_id="6b7b6756-2ac0-4248-9d39-ce17fa45731d"
location="eastus2"
RG="RG-GlobalAnalyticsIncorta-POV"
Environment = "POC"
Cost_Center = 1392
IDName="anomalicci"
StorageAccountid="https://gdabootdiagacnt.blob.core.windows.net/"
tags_map={
        Environment = "POC"
        Cost_Center = "1392"
}


nwprefix={
       nwrg = "USEast2-BigDataPOC-Networking"
       name = "USEast2-BigDataPOC-Spoke-10.197.11.0-25"
       address = "10.197.11.0/25"
}

nsgprefix={
      name = "NSG-USEast2-BigDataPOC-Spoke-10.197.11.0-25"
      nsgrg = "USEast2-BigDataPOC-Networking"
            
}
subnet={
        app = "Workloads"
        address = "10.197.11.0/25"
}
username = "sykrheladmin"
rsa_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSFGRvJ6F4kZy5pH1trryUNyOuAngCSXVnkIxnerVcbbamqVEKuYzXvIENhT8EPd4SrSu74XF2uxgXIwsv+howxeTrVkfTxqqMxu/RXzph7WCWpgOunE/N+teuOV9xq/fh0oopyh46rSeyZvvcArzfaRUdcmkDuDaQpt+mZ3s6mWp87Whm8mb3SrYk4wlB+FAGzlg8MSW21lymX8zGZrZ2CoDjOUums33bllyoVxqPBUL8kQOcthELU4giPNsbCFp20OyB6yc5ribb/H71LxpRHwKhP5epED9Ah6hFrcdVVXQKaenhdnszn7U1IzunlFkoUCPY/yWaT/cc12zR/Hyx sykrheladmin@bldlxadm02"
vms = {
    
    "azugdapoc01" = {
    size = "Standard_D32s_v4"
    source_image_id = "/subscriptions/6352ed84-44f5-46cc-a0cb-ac8fd59b0f43/resourceGroups/RSG-Performance-Tools/providers/Microsoft.Compute/galleries/RHEL8.4Image/images/RHEL8.4.2/versions/8.4.2"
      disks = {
        "app_0" = {
          size                 = 128
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
        
      }
      
    }      
}