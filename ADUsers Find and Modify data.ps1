#Display name, city and department in alphabetical order of all users located in London.
Get-ADUser -Filter * -Properties City,Department |
Where-Object {$_.City -eq 'London' -and $_.Department -eq 'IT'} |
Sort-Object -Property Name |
Select-Object -Property Name,City,Department


#Set all users under the above filter to be in located in office LON-A/1000.
Get-ADUser -Filter * -Properties City,Department |
Where-Object {$_.City -eq 'London' -and $_.Department -eq 'IT'} |
Set-ADUser -Office "LON-A/1000"