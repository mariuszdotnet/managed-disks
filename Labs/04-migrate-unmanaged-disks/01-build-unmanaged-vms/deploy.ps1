Select-AzureRmSubscription -SubscriptionName "Microsoft Azure Internal Consumption"

$ResourceGroupName = "demo-md-a"
$Location = "eastus2"

New-AzureRmResourceGroup -Name $ResourceGroupName -Location $Location -Verbose

New-AzureRmResourceGroupDeployment `
    -Name "deploy" `
    -ResourceGroupName $ResourceGroupName `
    -Mode Incremental `
    -TemplateFile "deploy.json" `
    -Verbose