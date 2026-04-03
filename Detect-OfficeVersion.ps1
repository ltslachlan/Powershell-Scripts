<#
.SYNOPSIS
Detects Office version compliance.

.AUTHOR
Lachlan McGregor

.DATE
2026
#>

param (
    [string]$MinimumVersion = "16.0.18827.20202"
)

$version = (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Office\ClickToRun\Configuration").VersionToReport

if ([version]$version -ge [version]$MinimumVersion) {
    Write-Output "Compliant"
    exit 0
} else {
    Write-Output "Non-Compliant"
    exit 1
}
