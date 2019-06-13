Login-AzAccount

Select-AzSubscription -Subscription "UK D&C Solutions"

Get-AzMarketplaceTerms -Publisher fortinet -Product fortinet_fortigate-vm_v5 -name fortinet_fg-vm_payg | Set-AzMarketplaceTerms -Accept

Get-AzMarketplaceTerms -Publisher center-for-internet-security-inc -Product "cis-windows-server-2016-v1-0-0-l1" -name cis-ws2016-l1 | Set-AzMarketplaceTerms -Accept


Test-AzDeployment  -Location "uksouth" -TemplateFile ".\master-template.json" -Verbose 

New-AzDeployment  -Location "uksouth" -TemplateFile ".\master-template.json" -Verbose


Test-AzDeployment  -Location "uksouth" -TemplateFile ".\master-template.1.json" -Verbose 

New-AzDeployment  -Location "uksouth" -TemplateFile ".\master-template.1.json" -Verbose

Test-AzDeployment  -Location "ukwest" -TemplateFile ".\master-DR-template.json" -Verbose 

New-AzDeployment  -Location "ukwest" -Name "DR-Deployment" -TemplateFile ".\master-DR-template.json" -Verbose