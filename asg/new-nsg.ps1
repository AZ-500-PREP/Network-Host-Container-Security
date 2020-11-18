$nsg = New-AzureRmNetworkSecurityGroup `
  -ResourceGroupName az500rg1 `
  -Location EastUS `
  -Name TEST-NSG-FOR-ASG `
  -SecurityRules $Rule1,$Rule2

  