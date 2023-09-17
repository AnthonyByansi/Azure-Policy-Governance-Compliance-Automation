# Azure Cost Analysis Script

# Connect to Azure
Connect-AzAccount

# Set your subscription and time frame
$subscriptionId = "your-subscription-id"
$startDate = Get-Date -Year 2023 -Month 01 -Day 01 -Hour 00 -Minute 00 -Second 00
$endDate = Get-Date -Year 2023 -Month 12 -Day 31 -Hour 23 -Minute 59 -Second 59

# Get cost data
$costData = Get-AzConsumptionUsageDetail -SubscriptionId $subscriptionId -StartDate $startDate -EndDate $endDate

# Calculate total cost
$totalCost = $costData | Measure-Object -Property PretaxCost -Sum | Select-Object -ExpandProperty Sum

# Display the total cost
Write-Host "Total cost for the specified time frame: $($totalCost) USD"
