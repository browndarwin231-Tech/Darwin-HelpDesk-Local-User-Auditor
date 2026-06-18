Write-Host ""
Write-Host "=== Darwin Local User Auditor ==="
Write-Host ""

$users = Get-LocalUser

Write-Host "Local Users Found:"
Write-Host "----------------------------"

foreach ($user in $users) {

    Write-Host "Name      :" $user.Name
    Write-Host "Enabled   :" $user.Enabled
    Write-Host "Last Logon:" $user.LastLogon
    Write-Host "----------------------------"
}

Write-Host ""
Write-Host "=== Local Administrators ==="
Write-Host ""

Get-LocalGroupMember -Group "Administrators" |
ForEach-Object {

    Write-Host $_.Name
}