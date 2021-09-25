$ResourceGroup = read-host -Prompt "Please enter the ResourceGroupName" 
$VMname = read-host -Prompt "Please enter the VMName" 
$SpecificDataKey = read-host -Prompt "Please enter the DataKey. Select from ( ALL,ResourceGroupName,Id,VmId,Name,Type,Location,Tags,DiagnosticsProfile,HardwareProfile,NetworkProfile,OSProfile,ProvisioningState,StorageProfile )"  
#Get Details of the VM
if($SpecificDataKey -like "ALL"){
(Get-AzVM -ResourceGroupName $ResourceGroup -Name $VMname -Verbose) | ConvertTo-Json

}else{
((Get-AzVM -ResourceGroupName $ResourceGroup -Name $VMname -Verbose).$SpecificDataKey) | ConvertTo-Json

}