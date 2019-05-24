#
# Get the correlationId of the pid deployment

$correlationId = (Get-AzDeployment -Name "pid-66f8425a-e532-50f2-be7a-95259b5d6238").correlationId

# Find all deployments with that correlationId

$deployments = Get-AzDeployment | Where-Object{$_.correlationId -eq $correlationId}

# Find all deploymentOperations in a deployment by name
# PowerShell doesn't surface outputResources on the deployment
# or correlationId on the deploymentOperation

foreach ($deployment in $deployments){

# Get deploymentOperations by deploymentName
# then the resourceId for any create operation

$operations = $deployment | Get-AzDeploymentOperation #| Where-Object{$_.properties.provisioningOperation -eq "Create" -and $_.properties.targetResource.resourceType -ne "Microsoft.Resources/deployments"}).properties.targetResource.id

}