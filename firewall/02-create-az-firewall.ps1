$ResourceGroup="az500V05rg"
$location="East US"
$VnetName="az500V05vnet"
$vnet = Get-AzureRmVirtualNetwork -ResourceGroupName $ResourceGroup -Name $VnetName
$AzureFirewallPIP = New-AzureRmPublicIpAddress -Name AZFWIPV05 -ResourceGroupName $ResourceGroup -Location $Location -AllocationMethod Static -Sku Standard
$AzureFirewallName = "A500FWV05"
$AzureFirewall = New-AzureRmFirewall -Name $AzureFirewallName -ResourceGroupName $ResourceGroup -Location $Lo