$AzureFirewall = Get-AzureRmFirewall -ResourceGroupName $ResourceGroup
$Rule1 = New-AzureRmFirewallApplicationRule -Name Rule1 -Protocol "http:80","https:443" -TargetFqdn "*microsoft.com"
$Rule2 = New-AzureRmFirewallApplicationRule -Name Rule2 -Protocol "http:80","https:443" -TargetFqdn "*microsoft.com"
$RuleCollection = New-AzureRmFirewallApplicationRuleCollection -Name RCV05 -Priority 100 -Rule $Rule1,$rule2