Set-ADUser -Identity "jon.snow" -ServicePrincipalNames @{Add='CIFS/thewall.north.ptolabs.local'}
Get-ADUser -Identity "jon.snow" | Set-ADAccountControl -TrustedToAuthForDelegation $true
Set-ADUser -Identity "jon.snow" -Add @{'msDS-AllowedToDelegateTo'=@('CIFS/winterfell.north.ptolabs.local','CIFS/winterfell')}