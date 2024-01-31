subscription_id="c00c53d4-abfa-496f-b46f-979258609972"
location="eastus2"
RG="RSG-PAN-LogForwarders-PROD-EastUS2-001"
Environment = "Prod"
Cost_Center = 1032
SIDName="Sentinel"
StorageAccountid="https://logfwdbootdiag.blob.core.windows.net/"
tags_map={
        Environment = "Prod"
        Cost_Center = "1392"
}


nwprefix={
       nwrg = "USEast2-NS-PAN-Networking"
       name = "USEast2-NS-PAN-VNet-10.197.120.0-22"
       address = "10.197.120.0/22"
}

subnet={
        app = "LogForwarders"
        address = "10.197.121.0/25"
}

nsgprefix={
      name = "Default-NSG-Well-Known-Ports"
      nsgrg = "USEast2-HC-VDC-PRD-Networking"
            
}

username = "sykrheladmin"
rsa_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSFGRvJ6F4kZy5pH1trryUNyOuAngCSXVnkIxnerVcbbamqVEKuYzXvIENhT8EPd4SrSu74XF2uxgXIwsv+howxeTrVkfTxqqMxu/RXzph7WCWpgOunE/N+teuOV9xq/fh0oopyh46rSeyZvvcArzfaRUdcmkDuDaQpt+mZ3s6mWp87Whm8mb3SrYk4wlB+FAGzlg8MSW21lymX8zGZrZ2CoDjOUums33bllyoVxqPBUL8kQOcthELU4giPNsbCFp20OyB6yc5ribb/H71LxpRHwKhP5epED9Ah6hFrcdVVXQKaenhdnszn7U1IzunlFkoUCPY/yWaT/cc12zR/Hyx sykrheladmin@bldlxadm02"
vms = {
    
    "azunesyslog01" = {
    size = "Standard_D8ds_v5"
    ServerType  = "NE"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/RHEL/images/RHEL8.4/versions/8.4.0"
      disks = {
        "app_0" = {
          size                 = 512
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
      }
      
    }  

    "azunesyslog02" = {
    size = "Standard_D8ds_v5"
    ServerType  = "NE"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/RHEL/images/RHEL8.4/versions/8.4.0"
      disks = {
        "app_0" = {
          size                 = 512
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
      }
      
    }  
    "azunesyslog03" = {
    size = "Standard_D8ds_v5"
    ServerType  = "NE"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/RHEL/images/RHEL8.4/versions/8.4.0"
      disks = {
        "app_0" = {
          size                 = 512
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
      }
      
    }  
    "azunesyslog04" = {
    size = "Standard_D8ds_v5"
    ServerType  = "NE"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/RHEL/images/RHEL8.4/versions/8.4.0"
      disks = {
        "app_0" = {
          size                 = 512
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
      }
      
    }  

    "azunesyslog05" = {
    size = "Standard_D8ds_v5"
    ServerType  = "NE"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/RHEL/images/RHEL8.4/versions/8.4.0"
      disks = {
        "app_0" = {
          size                 = 512
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
      }
      
    }  

    "azunesyslog06" = {
    size = "Standard_D8ds_v5"
    ServerType  = "NE"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/RHEL/images/RHEL8.4/versions/8.4.0"
      disks = {
        "app_0" = {
          size                 = 512
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
      }
      
    }  

    "azuse2syslog01" = {
    size = "Standard_D8ds_v5"
    ServerType  = "SE2"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/RHEL/images/RHEL8.4/versions/8.4.0"
      disks = {
        "app_0" = {
          size                 = 512
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
      }
      
    }    
       "azuse2syslog02" = {
    size = "Standard_D8ds_v5"
    ServerType  = "SE2"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/RHEL/images/RHEL8.4/versions/8.4.0"
      disks = {
        "app_0" = {
          size                 = 512
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
      }
      
    }    
       "azuse2syslog03" = {
    size = "Standard_D8ds_v5"
    ServerType  = "SE2"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/RHEL/images/RHEL8.4/versions/8.4.0"
      disks = {
        "app_0" = {
          size                 = 512
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
      }
      
    }    
       "azuse2syslog04" = {
    size = "Standard_D8ds_v5"
    ServerType  = "SE2"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/RHEL/images/RHEL8.4/versions/8.4.0"
      disks = {
        "app_0" = {
          size                 = 512
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
      }
      
    }    
       "azuse2syslog05" = {
    size = "Standard_D8ds_v5"
    ServerType  = "SE2"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/RHEL/images/RHEL8.4/versions/8.4.0"
      disks = {
        "app_0" = {
          size                 = 512
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
      }
      
    }     
       "azuse2syslog06" = {
    size = "Standard_D8ds_v5"
    ServerType  = "SE2"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/RHEL/images/RHEL8.4/versions/8.4.0"
      disks = {
        "app_0" = {
          size                 = 512
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
      }
      
    }     
}
