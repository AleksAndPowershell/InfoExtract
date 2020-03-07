Test-Path "C:\Users\$env:username\Downloads\InfoExtract (1).exe"
$FileExists = Test-Path "C:\Users\$env:username\Downloads\infoextract (1).exe"
If ($FileExists -eq $True) {
[System.Reflection.Assembly]::LoadWithPartialName(“System.Windows.Forms”)
[Windows.Forms.MessageBox]::Show(“Already have file located in computer”, “PowerShellScripts.blogspot.com”, [Windows.Forms.MessageBoxButtons]::OK, [Windows.Forms.MessageBoxIcon]::Information)
[void][System.Reflection.Assembly]::LoadWithPartialName(‘Microsoft.VisualBasic’) 
$result = [Microsoft.VisualBasic.Interaction]::MsgBox(“You already have a copy of infoextract.exe on your computer!!!!!”, ‘YesNoCancel,Question’, “Already have file in computer”) 
switch ($result) {
‘Yes’ { EXIT }
‘No’ { EXIT }
‘Cancel’ { EXIT }
}
}
Else {write-host "all is well"}


[System.Reflection.Assembly]::LoadWithPartialName(“System.Windows.Forms”)
[Windows.Forms.MessageBox]::Show(“Welcome to info extract, press OK to continue”, “PowerShellScripts.blogspot.com”, [Windows.Forms.MessageBoxButtons]::OK, [Windows.Forms.MessageBoxIcon]::Information)
[void][System.Reflection.Assembly]::LoadWithPartialName(‘Microsoft.VisualBasic’) 
$result = [Microsoft.VisualBasic.Interaction]::MsgBox(“Run Program?”, ‘YesNoCancel,Question’, “Information Extraction”) 
switch ($result) {
‘Yes’ { “Continue” }
‘No’ { EXIT }
‘Cancel’ { EXIT }
}
D:
New-Item -Path "D:\" -type file -name "ALLUSERSPROFILE.txt"
New-Item -Path "D:\" -type file -name "SESSIONNAME.txt"
New-Item -Path "D:\" -type file -name "Get host.txt"
New-Item -Path "D:\" -type file -name "ipconfig3.txt"
new-Item -path "D:\" -type file -name "ipconfig2.txt"
New-Item -Path "D:\" -type file -name "WindowsFull.txt"
New-Item -Path "D:\" -type file -name "Ipconfig.txt"
New-Item -path "D:\" -type file -name "Pctree.txt"
New-Item -path "D:\" -type file -name "Active_connections.txt"
New-Item -path "D:\" -type file -name "C_directory.txt"
New-Item -path "D:\" -type file -name "Windows.txt"
New-Item -path "D:\" -type file -name "System32.txt"
New-Item -path "D:\" -type file -name "Active_users.txt"
New-Item -path "D:\" -type file -name "host.txt"
New-Item -path "D:\" -type file -name "USERNAME.txt"
New-Item -path "D:\" -type file -name "Computer_name.txt"
New-Item -path "D:\" -type file -name "user_info.txt"
New-Item -path "D:\" -type file -name "admin.txt"
New-Item -Path "D:\" -type file -Name "current_tasks.txt"
C:
cd\
$env:SESSIONNAME > D:\SESSIONNAME.txt
tracert $env:SESSIONNAME > D:\SESSIONNAME.txt
$env:ALLUSERSPROFILE > D:\ALLUSERSPROFILE.txt
tracert $env:ALLUSERSPROFILE > D:\ALLUSERSPROFILE.txt
Copy C:\windows D:\info_on_$env:computername
get-host > "get host.txt"
Get-NetIPAddress > "D:\ipconfig2.txt"
Get-NetIPConfiguration > "D:\ipconfig3.txt"
ipconfig /allcompartments /all > "D:\ipconfig.txt"
Tasklist > "D:\current_tasks.txt"
dir > "D:\C_directory.txt"
netstat -ano -q -n > "D:\Active_connections.txt"
netstat -es > "D:\Active_connections.txt"
Cd C:\windows
dir > "D:\Windows.txt"
cd system32
dir > "D:\system32.txt"
Net users > "D:\active_users.txt"
Host > "D:\Host.txt"
$env:computername > "D:\Computer_name.txt"
$env:username > "D:\username.txt"
net user $env:username > "D:\user_info.txt"
Net user administrator > "D:\admin.txt"
D:
New-Item -itemType directory -path D:\info_on_$env:computername
Move 'D:\SESSIONNAME.txt' D:\info_on_$env:computername
Move 'ALLUSERSPROFILE.txt' D:\info_on_$env:computername
Move 'get host.txt' D:\info_on_$env:computername
Move 'ipconfig3.txt' D:\info_on_$env:computername
Move 'ipconfig2.txt' D:\info_on_$env:computername
Move 'D:\Pctree.txt' D:\info_on_$env:computername
Move 'D:\system32.txt' D:\info_on_$env:computername
Move 'D:\Active_users.txt' D:\info_on_$env:computername
Move 'D:\host.txt' D:\info_on_$env:computername
Move 'D:\C_directory.txt' D:\info_on_$env:computername
Move 'D:\Active_connections.txt' D:\info_on_$env:computername
Move 'D:\username.txt' D:\info_on_$env:computername
Move 'D:\User_info.txt' D:\info_on_$env:computername
Move 'D:\Computer_name.txt' D:\info_on_$env:computername
Move 'D:\admin.txt' D:\info_on_$env:computername
Move 'D:\windows.txt' D:\info_on_$env:computername
Move 'D:\current_tasks.txt' D:\info_on_$env:computername
Move 'D:\ipconfig.txt' D:\info_on_$env:computername
Move 'D:\WindowsFull.txt' D:\info_on_$env:computername
C:
cd\
Get-PSBreakpoint
[void][System.Reflection.Assembly]::LoadWithPartialName(‘Microsoft.VisualBasic’) 
$result = [Microsoft.VisualBasic.Interaction]::MsgBox(“Download Windows?”, ‘YesNoCancel,Question’, “Download Windows?”) 
switch ($result) 
{ ‘Yes’ 
{
Copy C:\windows D:\info_on_$env:computername                                                          
pause
$a = new-object -comobject wscript.shell
$b = $a.popup(“Press OK to continue“,0,“Continue”,1)
get-psbreakpoint 
}
}
{ 'No' }
[void][System.Reflection.Assembly]::LoadWithPartialName(‘Microsoft.VisualBasic’) 
$result = [Microsoft.VisualBasic.Interaction]::MsgBox(“Run tree extraction?”, ‘YesNoCancel,Question’, “Run tree extraction?”) 
switch ($result) 
{ ‘Yes’ 
{
tree /f "C:\" > D:\info_on_$env:computername\pctree.txt
echo Informational Extraction Complete                                                                #########################################################
pause
$a = new-object -comobject wscript.shell
$b = $a.popup(“Press OK to continue“,0,“Script Completed!”,1)
get-psbreakpoint 
[void][System.Reflection.Assembly]::LoadWithPartialName(‘Microsoft.VisualBasic’) 
$result = [Microsoft.VisualBasic.Interaction]::MsgBox(“Code completed succesfully, Exit?”, ‘YesNoCancel,Question’, “Prompt Now Shuting down”) 
switch ($result) {
‘Yes’ { taskkill /f /im Infoextract.exe /T }
‘No’ { pause }
‘Cancel’ { Pause }
}
}
}

{ 'No' 
{ get-psbreakpoint
$a = new-object -comobject wscript.shell
$b = $a.popup(“Press OK to continue“,0,“Script Completed!”,1)
get-psbreakpoint 
[void][System.Reflection.Assembly]::LoadWithPartialName(‘Microsoft.VisualBasic’) 
$result = [Microsoft.VisualBasic.Interaction]::MsgBox(“Code completed succesfully, Exit?”, ‘YesNoCancel,Question’, “Prompt Now Shuting down”) 
switch ($result) {
‘Yes’ { taskkill /f /im Infoextract.exe /T }
‘No’ { pause }
‘Cancel’ { Pause }
}
}
}
{ ‘No’ 
{ tree /f "C:\" > D:\info_on_$env:computername\pctree.txt
get-psbreakpoint 
}
}
$a = new-object -comobject wscript.shell
$b = $a.popup(“Press OK to continue“,0,“Script Completed!”,1)
get-psbreakpoint 
[void][System.Reflection.Assembly]::LoadWithPartialName(‘Microsoft.VisualBasic’) 
$result = [Microsoft.VisualBasic.Interaction]::MsgBox(“Code completed succesfully, Exit?”, ‘YesNoCancel,Question’, “Prompt Now Shuting down”) 
switch ($result) {
‘Yes’ { taskkill /f /im Infoextract.exe /T }
‘No’ { pause }
‘Cancel’ { Pause }
}