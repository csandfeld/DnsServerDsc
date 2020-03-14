<#PSScriptInfo

.VERSION 1.0.1

.GUID 192b2a8c-2e8a-470c-8558-2da70c3b8793

.AUTHOR DSC Community

.COMPANYNAME DSC Community

.COPYRIGHT DSC Community contributors. All rights reserved.

.TAGS DSCConfiguration

.LICENSEURI https://github.com/dsccommunity/xDnsServer/blob/master/LICENSE

.PROJECTURI https://github.com/dsccommunity/xDnsServer

.ICONURI https://dsccommunity.org/images/DSC_Logo_300p.png

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS

.EXTERNALSCRIPTDEPENDENCIES

.RELEASENOTES
Updated author, copyright notice, and URLs.

.PRIVATEDATA 2016-Datacenter,2016-Datacenter-Server-Core

#> 

#Requires -Module xDnsServer


<#
    .DESCRIPTION
        This configuration will manage a DNS client subnet
#>

Configuration xDnsServerClientSubnet_config
{
    Import-DscResource -ModuleName 'xDnsServer'

    Node localhost
    {
        xDnsServerClientSubnet 'ClientSubnet1'
        {
            Name       = 'London'
            IPv4Subnet = @('10.1.0.0/16', '10.8.0.0/16')
            Ensure     = 'Present'
        }
    }
}
