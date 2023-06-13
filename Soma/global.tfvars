subscription_id="f872332c-d61d-4bc7-b767-2550e7f9ef88"
location="WestEurope"
RG="rsg-soma-westeurope"
Environment = "prod"
Cost_Center = 1034
StorageAccountid="https://somastorageaccount.blob.core.windows.net/"
tags_map={
        Environment = "prod"
        Cost_Center = "1034"
}


nwprefix={
       nwrg = "WestEurope-VDC-General-Workload-Networking"
       name = "WestEurope-VDC-Spoke-10.198.4.0-23"
       address = "10.198.4.0/23"
}


subnet={
        app = "default"
        address = "10.198.4.0/24"
}
username = "sykrheladmin"
rsa_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSFGRvJ6F4kZy5pH1trryUNyOuAngCSXVnkIxnerVcbbamqVEKuYzXvIENhT8EPd4SrSu74XF2uxgXIwsv+howxeTrVkfTxqqMxu/RXzph7WCWpgOunE/N+teuOV9xq/fh0oopyh46rSeyZvvcArzfaRUdcmkDuDaQpt+mZ3s6mWp87Whm8mb3SrYk4wlB+FAGzlg8MSW21lymX8zGZrZ2CoDjOUums33bllyoVxqPBUL8kQOcthELU4giPNsbCFp20OyB6yc5ribb/H71LxpRHwKhP5epED9Ah6hFrcdVVXQKaenhdnszn7U1IzunlFkoUCPY/yWaT/cc12zR/Hyx sykrheladmin@bldlxadm02"
vms = {
    
    "azusomap01" = {
    size = "Standard_NC8as_T4_v3"
    source_image_id = "/subscriptions/d1d53b59-b625-4bf9-9c7e-0ade10b76d6b/resourceGroups/RG-UNIX-VDC/providers/Microsoft.Compute/galleries/RHEL/images/RHEL8.5"
      disks = {
        "app_0" = {
          size                 = 2048
          storage_account_type = "Premium_LRS"
          lun                  = 0
        }
      }
      
    }      
}
