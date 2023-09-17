# Remediation Script for Enforcing Data Encryption in Azure Storage Accounts

# Define the Azure Resource ID of the non-compliant resource
$resourceId = "YOUR_NON_COMPLIANT_STORAGE_ACCOUNT_RESOURCE_ID"

# Enable HTTPS traffic only for the specified storage account
Set-AzStorageAccount -ResourceGroupName "YOUR_RESOURCE_GROUP_NAME" -Name "YOUR_STORAGE_ACCOUNT_NAME" -EnableHttpsTrafficOnly $true

# Confirm remediation success
$remediationStatus = Get-AzStorageAccount -ResourceGroupName "YOUR_RESOURCE_GROUP_NAME" -Name "YOUR_STORAGE_ACCOUNT_NAME" | Select-Object -ExpandProperty EnableHttpsTrafficOnly

if ($remediationStatus -eq $true) {
    Write-Host "Remediation successful: Data encryption enforced for storage account."
} else {
    Write-Host "Remediation failed: Data encryption not enforced for storage account."
}
