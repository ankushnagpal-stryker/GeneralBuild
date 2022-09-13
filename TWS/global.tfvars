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
    
    "azusftwst01" = {
    size = "Standard_E4as_v5"
    source_image_id = "/subscriptions/6352ed84-44f5-46cc-a0cb-ac8fd59b0f43/resourceGroups/RSG-Performance-Tools/providers/Microsoft.Compute/galleries/RHEL8.4Image/images/RHEL8.4.2/versions/8.4.2"
      disks = {
         
        "data_0" = {
          size                 = 2048
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }    
        
        "data_1" = {
          size                 = 2048
          storage_account_type = "Premium_LRS"
          lun                  = 1
        } 

        "redoa" = {
          size                 = 32
          storage_account_type = "Premium_LRS"
          lun                  = 2
        }  

          "redob" = {
          size                 = 32
          storage_account_type = "Premium_LRS"
          lun                  = 3
        } 

        "dbdisk" = {
          size                 = 64
          storage_account_type = "Premium_LRS"
          lun                  = 4
        } 

        "arch" = {
          size                 = 128
          storage_account_type = "Premium_LRS"
          lun                  = 5
        } 

        "temp" = {
          size                 = 128
          storage_account_type = "Premium_LRS"
          lun                  = 6
        } 
        
      }
      
    }      

    "azusftwsr01" = {
    size = "Standard_E4as_v5"
    source_image_id = "/subscriptions/6352ed84-44f5-46cc-a0cb-ac8fd59b0f43/resourceGroups/RSG-Performance-Tools/providers/Microsoft.Compute/galleries/RHEL8.4Image/images/RHEL8.4.2/versions/8.4.2"
      disks = {
         
        "data_0" = {
          size                 = 1024
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }    
        
        "data_1" = {
          size                 = 1024
          storage_account_type = "Premium_LRS"
          lun                  = 1
        } 

        "redoa" = {
          size                 = 32
          storage_account_type = "Premium_LRS"
          lun                  = 2
        }  

          "redob" = {
          size                 = 32
          storage_account_type = "Premium_LRS"
          lun                  = 3
        } 

        "dbdisk" = {
          size                 = 64
          storage_account_type = "Premium_LRS"
          lun                  = 4
        } 

        "arch" = {
          size                 = 128
          storage_account_type = "Premium_LRS"
          lun                  = 5
        } 

        "temp" = {
          size                 = 128
          storage_account_type = "Premium_LRS"
          lun                  = 6
        } 
        
      }
      
    }      
}

