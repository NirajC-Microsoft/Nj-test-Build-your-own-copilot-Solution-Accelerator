var deployerInfo = deployer() ?? {}
var deployerName = empty(deployerInfo.userPrincipalName) ? 'unknown' : split(deployerInfo.userPrincipalName, '@')[0]

param aiDeploymentsLocation string

output deployerInfo object = {
  userPrincipalName: deployerName//deployerFunc.userPrincipalName
  tenantId: deployerInfo.tenantId
}

output createdBy string = deployerInfo.userPrincipalName
