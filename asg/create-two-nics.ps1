$VNet=Get-AzureRmVirtualNetwork -Name az500-vnet -ResourceGroupName az500rg1
 
$NIC = New-AzureRmNetworkInterface `
  -Name NIC01 `
  -ResourceGroupName az500rg1 `
  -Location EastUS `
  -Subnet $VNet.Subnets[0] `
  -ApplicationSecurityGroup $asg1
 
$NIC = New-AzureRmNetworkInterface `
  -Name NIC02 `
  -ResourceGroupName az500rg1 `
  -Location EastUS `
  -Subnet $VNet.Subnets[0] `
  -ApplicationSecurityGroup $asg2