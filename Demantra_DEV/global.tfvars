subscription_id="5487a063-1d3b-4ad3-8583-01948e8fa375"
location="CentralUS"
RG="RSG-DEMANTRA-Dev"
Environment = "DEV"
Cost_Center = 1032
StorageAccountid="https://demantradevstrgaccount.blob.core.windows.net/"
tags_map={
        Environment = "DEV"
        Cost_Center = "1032"
}


nwprefix={
       nwrg = "USCentral-Dev-Test-Networking"
       name = "USCentral-Dev-Test-Spoke-10.199.87.0-24"
       address = "10.199.87.0/24"
}

subnet={
        app = "Workloads"
        address = "10.199.87.0/24"
}

nsgprefix={
      name = "Default-NSG-Well-Known-Ports"
      nsgrg = "USCentral-Dev-Test-Networking"
            
}

username = "sykrheladmin"
rsa_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSFGRvJ6F4kZy5pH1trryUNyOuAngCSXVnkIxnerVcbbamqVEKuYzXvIENhT8EPd4SrSu74XF2uxgXIwsv+howxeTrVkfTxqqMxu/RXzph7WCWpgOunE/N+teuOV9xq/fh0oopyh46rSeyZvvcArzfaRUdcmkDuDaQpt+mZ3s6mWp87Whm8mb3SrYk4wlB+FAGzlg8MSW21lymX8zGZrZ2CoDjOUums33bllyoVxqPBUL8kQOcthELU4giPNsbCFp20OyB6yc5ribb/H71LxpRHwKhP5epED9Ah6hFrcdVVXQKaenhdnszn7U1IzunlFkoUCPY/yWaT/cc12zR/Hyx sykrheladmin@bldlxadm02"
vms = {
    
    "azuorandwd01" = {
    size = "Standard_E8-4as_v4"
    source_image_id = "/subscriptions/5487a063-1d3b-4ad3-8583-01948e8fa375/resourceGroups/rsg-Demantra/providers/Microsoft.Compute/galleries/OEL/images/OEL7.9/versions/7.9.0"
      disks = {
        "Datadisk_0" = {
          size                 = 512
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
         "Datadisk_1" = {
          size                 = 512
          storage_account_type = "Premium_LRS"
          lun                  = 1
        }
         "redoadisk_0" = {
          size                 = 64
          storage_account_type = "Premium_LRS"
          lun                  = 2
        }
        "redobdisk_0" = {
          size                 = 64
          storage_account_type = "Premium_LRS"
          lun                  = 3
        }
        "dbdisk_0" = {
          size                 = 256
          storage_account_type = "Premium_LRS"
          lun                  = 4
        }
        "archdisk_0" = {
          size                 = 512
          storage_account_type = "Premium_LRS"
          lun                  = 5
        }
        "tempdisk_0" = {
          size                 = 1024
          storage_account_type = "Premium_LRS"
          lun                  = 6
        }
      }
      
    }      
}
