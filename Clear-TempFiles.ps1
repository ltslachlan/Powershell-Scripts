<#
.SYNOPSIS
Clears temp files.

.AUTHOR
Lachlan McGregor

.DATE
2026
#>

$paths = @(
    "$env:TEMP\*",
    "C:\Windows\Temp\*"
)

foreach ($path in $paths) {
    Remove-Item $path -Recurse -Force -ErrorAction SilentlyContinue
}
