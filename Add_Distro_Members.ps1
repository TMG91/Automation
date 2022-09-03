Connect-ExchangeOnline -UserPrincipalName tmadmin@flooranddecor.com
$Userlist = Import-Csv C:\Add_Distribution_Members\GroupMemberLists.csv
ForEach ($User in $Userlist)
{
Add-DistributionGroupMember -Identity "Associate Merchants" -Member $User.PrimarySmtpAddress
}
