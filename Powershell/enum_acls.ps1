#store the output of the Get-ChildItem command in the $directory variable
$directory = $(Get-ChildItem 'C:\')

#iterate through each file or directory
foreach ($item in $directory) {
    #capture the acl for each
    Get-Acl $item
}