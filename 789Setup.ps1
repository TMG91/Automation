# Request elevation with administration rights
If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {   
    $arguments = "& '" + $myinvocation.mycommand.definition + "'"
    Start-Process powershell -Verb runAs -ArgumentList $arguments
    Break
}
else {
    # Code to run elevated here
}

#Write-Host "Installing Ingenico Driver for Echo"
#Start-Process "C:\789_Files\ingenicoDriver.exe" "/S /PID=0062:20 /PORT=20" -Wait

#Write-Host "Installing PaymentMate Windows Edition"
#Start-Process "C:\789_Files\pmlite.exe" "/q" -Wait

Write-Host "Creating PaymentMate Registry Files"
Start-Process "C:\789_Files\paymentMateRegKeys.reg" -Wait

Write-host "Installing MMS GUI"
Start-Process "C:\789_Files\MMS GUI\deploy-msi.bat" -Wait

Write-Host "Installing Five9 Softphone"
Start-Process "C:\789_Files\Five 9\Five9SoftphoneService (2).msi" -Wait

Write-Host "Moving POS Shortcuts to Root of C:"
Move-Item -Path "C:\789_Files\POS Shortcuts" -Destination "C:\"

#Move-Item -Path "C:\789_Files\POS Shortcuts\JDA Store BackOffice" -Destination "Desktop"
#Move-Item -Path "C:\789_Files\POS Shortcuts\JDA Store POS Register" -Destination "Desktop"


#Write-Host "Moving Customer Care Desktop Items"
#Move-Item -Path "C:\789_Files\Customer Care Desktop Items\789 Call Center SOP (002).docx" -Destination "Desktop"
#Move-Item -Path "C:\789_Files\Customer Care Desktop Items\Call Center New hire guide.docx" -Destination "Desktop"
#Move-Item -Path "C:\789_Files\Customer Care Desktop Items\Credential sheet.xlsx" -Destination "Desktop"