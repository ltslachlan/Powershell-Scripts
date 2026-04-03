<#
.SYNOPSIS
Lists installed software.

.AUTHOR
Lachlan McGregor

.DATE
2026
#>

param (
    [string]$OutputPath = "InstalledApps.csv"
)

$apps = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* |
Select-Object DisplayName, DisplayVersion, Publisher

$apps | Where-Object { $_.DisplayName } |
Export-Csv -Path $OutputPath -NoTypeInformation
