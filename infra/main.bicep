var deployerInfo = deployer() ?? {}
var deployerName = empty(deployerInfo.userPrincipalName) ? 'unknown' : split(deployerInfo.userPrincipalName, '@')[0]

output deployerInfo object = {
  userPrincipalName: deployerName//deployerFunc.userPrincipalName
  tenantId: deployerInfo.tenantId
}

output createdBy string = deployerInfo.userPrincipalName
