Connect-ExchangeOnline -UserPrincipalName tmadmin@flooranddecor.com
$Userlist = Import-Csv C:\Add_Distribution_Members\GroupMemberLists.csv
ForEach ($User in $Userlist)
{
Add-MailboxPermission “HR Workday Operations” -User $User.PrimarySmtpAddress -AccessRights FullAccess -InheritanceType all
}
