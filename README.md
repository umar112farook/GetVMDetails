## Challenge #2

We need to write code that will query the meta data of an instance within AWS and provide a json formatted output. The choice of language and implementation is up to you.
Bonus Points
The code allows for a particular data key to be retrieved individually


## Prerequisite:
Need to have existing VM in the azure cloud subscription.
Need to know the name of the Resource Group where VM is present
Need to know the name of the VM


## Solution

We will get the details(All details or specfic data keys) with powershell script and and excute it in cloudshell.

Steps to follow:

1. Browse to the Azure portal (https://portal.azure.com/)
2. If necessary, log in to your Azure subscription and change the Azure directory. Make sure you have Contributor to the subscription.
3. Open Cloud Shell.
4. Select PowerShell from the drop down
5. Verify the default Azure subscription where you want to create resources with below command 
	az account show
6. To use a specific Azure subscription, run az account set. 
	az account set --subscription "<subscription_id_or_subscription_name>"
7. Clone the terraform repo from GITHUB with below command 
	git clone https://github.com/AmanM13/azure-stack.git
8. Change working directory now with below command.
	cd GetVMDetails
9. Run the below command to see the output in console
        .\GetVMdetails.ps1
10. Enter the ResourceGroupName when prompted.
11. Enter the VM name when prompted.
12. Enter the DataKey when prompted. [ALL gives all the details and other keys give other details]. Select as per requirement from below.
( ALL, ResourceGroupName,Id,VmId,Name,Type,Location,Tags,DiagnosticsProfile,HardwareProfile,NetworkProfile,OSProfile,ProvisioningState,StorageProfile 

You will see the details in JSON format.


