subscription_id="5487a063-1d3b-4ad3-8583-01948e8fa375"
location="eastus2"
RG="RSG-APP-Itential"
Environment = "POC"
Cost_Center = 1392
#IDName="us12cdev"
StorageAccountid="https://itentialstorageaccount.blob.core.windows.net/"
tags_map={
        Environment = "POC"
        Cost_Center = "1392"
}


nwprefix={
       nwrg = "Stryker-Dev-Test-Networking"
       name = "USEast2-VDC-Spoke-10.197.10.0-24"
       address = "10.197.10.0/24"
}
/*
nsgprefix={
      name = "Default-NSG-Well-Known-Ports"
      nsgrg = "Stryker-Dev-Test-Networking"
            
}
*/
subnet={
        app = "Workloads"
        address = "10.197.10.0/24"
}
username = "sykrheladmin"
rsa_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSFGRvJ6F4kZy5pH1trryUNyOuAngCSXVnkIxnerVcbbamqVEKuYzXvIENhT8EPd4SrSu74XF2uxgXIwsv+howxeTrVkfTxqqMxu/RXzph7WCWpgOunE/N+teuOV9xq/fh0oopyh46rSeyZvvcArzfaRUdcmkDuDaQpt+mZ3s6mWp87Whm8mb3SrYk4wlB+FAGzlg8MSW21lymX8zGZrZ2CoDjOUums33bllyoVxqPBUL8kQOcthELU4giPNsbCFp20OyB6yc5ribb/H71LxpRHwKhP5epED9Ah6hFrcdVVXQKaenhdnszn7U1IzunlFkoUCPY/yWaT/cc12zR/Hyx sykrheladmin@bldlxadm02"
vms = {
    "azuItentialpoc01" = {
    size = "Standard_D8lds_v51"
    source_image_id = "/subscriptions/91cbd599-d354-48e3-b7b9-380006e84af6/resourceGroups/RSG-SAP-TEST/providers/Microsoft.Compute/galleries/RHEL9/images/RHEL9.2_Image/versions/0.0.0"
      disks = {
        "app_0" = {
          size                 = 256
          storage_account_type = "Premium_LRS"
          lun                  = 1
        }
        
      }
      
    }      
}