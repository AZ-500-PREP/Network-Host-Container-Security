$Rule1 = New-AzureRmNetworkSecurityRuleConfig `
  -Name "az500WebServers" `
  -Access Allow `
  -Protocol Tcp `
  -Direction Inbound `
  -Priority 110 `
  -SourceAddressPrefix Internet `
  -SourcePortRange * `
  -DestinationApplicationSecurityGroup $asg1 `
  -DestinationPortRange 443
 
$Rule2 = New-AzureRmNetworkSecurityRuleConfig `
  -Name "az500MgmtServers" `
  -Access Allow `
  -Protocol Tcp `
  -Direction Inbound `
  -Priority 120 `
  -SourceApplicationSecurityGroup $Asg1 `
  -SourcePortRange * `
  -DestinationApplicationSecurityGroup $asg2 `
  -DestinationPortRange 1433