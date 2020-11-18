$AzureFirewall = Get-AzureRmFirewall -ResourceGroupName $ResourceGroup
$AzureFirewallRouteName = "A500V05Route01"
$AzureFirewallRouteTableName = "A500V05RouteTable01"
$AzureFirewallPrivateIP = $AzureFirewall.IpConfigurations[0].PrivateIPAddress
$AzureFirewallRoute = New-AzureRmRouteConfig -Name $AzureFirewallRouteName  AddressPrefix 0.0.0.0/0 -NextHopType VirtualAppliance -NextHopIpAddress $AzureFirewallPrivateIP
$AzureFirewallRouteTable = New-AzureRmRouteTable -Name $AzureFirewallRouteTableName -ResourceGroupName $ResourceGroup -location $Location -Route $AzureFirewallRoute
$vnet.Subnets[2].RouteTable = $AzureFirewallRouteTable
Set-AzureRmVirtualNetwork -VirtualNetwork $vnet