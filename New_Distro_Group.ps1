Connect-ExchangeOnline -UserPrincipalName tmadmin@flooranddecor.com
$GroupName = Read-Host "GroupName"
$Type = "Distribution"
$PrimarySMTP = Read-Host "PrimarySMTP"

    New-DistributionGroup -Name $GroupName -Type $Type -PrimarySmtpAddress $PrimarySMTP

Write-Host "***EDITING OWNERS***"
$NewOwner = Read-Host "New Owner"

    Set-DistributionGroup -Identity $GroupName -ManagedBy $NewOwner

Write-Host "***ADDING MEMBERS***"
$members = @(



Read-Host "member1"

Read-Host "member2"

Read-Host "member3"

Read-Host "member4"

Read-Host "member5"

Read-Host "member6"

Read-Host "member7"

Read-Host "member8"

Read-Host "member9"

Read-Host "member10"

Read-Host "member11"

Read-Host "member12"

Read-Host "member13"

Read-Host "member14"



)



#$Members = Read-Host "Members"



foreach ($member in $members) {



    Update-DistributionGroupMember -Identity $GroupName -Member $Members -Confirm

    Write-Host "Update-DistributionGroupMember -Identity $GroupName -Member $Members -Confirm"



}

