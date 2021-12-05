$CSS = @'
<style>

table {border:1pt solid black;width:100%;border-collapse:collapse;}

tr,td {border:1pt solid black;border-collapse:collapse;}

th {border:1pt solid black;background-color:green;border-collapse:collapse;}

</style>
'@



Get-ADUser -Filter * -Properties Department,City,Office | 
Where-Object {$_.Department -eq ‘IT’ -and $_.City -eq ‘London’} | 
Select-Object -Property Name,Department,City,Office | 
Sort-Object -Property Name |
ConvertTo-Html -PreContent 'Users' -Head $CSS |
Out-File E:\UserReport.html