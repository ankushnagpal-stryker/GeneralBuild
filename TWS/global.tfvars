subscription_id="5487a063-1d3b-4ad3-8583-01948e8fa375"
location="eastus2"
RG="RSG-Trackwise-SBX"
Environment = "SBX"
Cost_Center = 1392
IDName="tws"
StorageAccountid="https://twsbootdiagacnt.blob.core.windows.net/"
tags_map={
        Environment = "SBX"
        Cost_Center = "1392"
}


nwprefix={
       nwrg = "Stryker-Dev-Test-Networking"
       name = "USEast2-VDC-Spoke-10.197.10.0-24"
       address = "10.197.10.0/24"
}

#nsgprefix={
#      name = "NSG-USEast2-BigDataPOC-Spoke-10.197.11.0-25"
#      nsgrg = "USEast2-BigDataPOC-Networking"        
#}
subnet={
        app = "Workloads"
        address = "10.197.10.0/24"
}
username = "sykrheladmin"
rsa_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSFGRvJ6F4kZy5pH1trryUNyOuAngCSXVnkIxnerVcbbamqVEKuYzXvIENhT8EPd4SrSu74XF2uxgXIwsv+howxeTrVkfTxqqMxu/RXzph7WCWpgOunE/N+teuOV9xq/fh0oopyh46rSeyZvvcArzfaRUdcmkDuDaQpt+mZ3s6mWp87Whm8mb3SrYk4wlB+FAGzlg8MSW21lymX8zGZrZ2CoDjOUums33bllyoVxqPBUL8kQOcthELU4giPNsbCFp20OyB6yc5ribb/H71LxpRHwKhP5epED9Ah6hFrcdVVXQKaenhdnszn7U1IzunlFkoUCPY/yWaT/cc12zR/Hyx sykrheladmin@bldlxadm02"
vms = {
    
    "azuorasftwst01" = {
    size = "Standard_E4as_v5"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/OEL8/images/OEL8.4/versions/8.4.0"
      disks = {
         
        "datadisk_0" = {
          size                 = 2048
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }    
        
        "datadisk_1" = {
          size                 = 2048
          storage_account_type = "Premium_LRS"
          lun                  = 1
        } 

        "redoadisk_0" = {
          size                 = 32
          storage_account_type = "Premium_LRS"
          lun                  = 2
        }  

          "redobdisk_0" = {
          size                 = 32
          storage_account_type = "Premium_LRS"
          lun                  = 3
        } 

        "dbdisk_0" = {
          size                 = 64
          storage_account_type = "Premium_LRS"
          lun                  = 4
        } 

        "archdisk_0" = {
          size                 = 128
          storage_account_type = "Premium_LRS"
          lun                  = 5
        } 

        "tempdisk_0" = {
          size                 = 128
          storage_account_type = "Premium_LRS"
          lun                  = 6
        } 
        
      }
      
    }      

    "azuorasftwsr01" = {
    size = "Standard_E4as_v5"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/OEL8/images/OEL8.4/versions/8.4.0"
      disks = {
         
        "datadisk_0" = {
          size                 = 1024
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }    
        
        "datadisk_1" = {
          size                 = 1024
          storage_account_type = "Premium_LRS"
          lun                  = 1
        } 

        "redoadisk_0" = {
          size                 = 32
          storage_account_type = "Premium_LRS"
          lun                  = 2
        }  

          "redobdisk_0" = {
          size                 = 32
          storage_account_type = "Premium_LRS"
          lun                  = 3
        } 

        "dbdisk_0" = {
          size                 = 64
          storage_account_type = "Premium_LRS"
          lun                  = 4
        } 

        "archdisk_0" = {
          size                 = 128
          storage_account_type = "Premium_LRS"
          lun                  = 5
        } 

        "tempdisk_0" = {
          size                 = 128
          storage_account_type = "Premium_LRS"
          lun                  = 6
        } 
        
      }
      
    }      
}

