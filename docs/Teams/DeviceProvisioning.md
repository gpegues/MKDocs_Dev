## **Device Provisioning**

### Booking Delegate Group
By default, the room is open to anyone booking it based on availability. To scope this down, create an M365 group in Azure AD and use that as the `"<BDGroup>"` below. As for the naming of the group, it should end in "MTR Booking Allowed"
### MTR Mailbox Creation and Configuration
<span style="font-size:larger;">**Create the new mailbox using exchange online powershell**</span>  
```Powershell
New-Mailbox -Name "<RoomName>" -Alias <RoomAlias> -Room -EnableRoomMailboxAccount $true -MicrosoftOnlineServicesID <RoomUPN> -RoomMailboxPassword (ConvertTo-SecureString -String '<Password>' -AsPlainText -Force)
```
 
<span style="font-size:larger;">**Configure calendar processing (more info here: [Set-CalendarProcessing (ExchangePowerShell) | Microsoft Learn)](https://learn.microsoft.com/en-us/powershell/module/exchange/set-calendarprocessing?view=exchange-ps))**</span>
 
For a room with booking delegates:  
```Powershell
Set-CalendarProcessing -Identity "<RoomUPN>" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -DeleteComments $false -DeleteSubject $false -RemovePrivateProperty $false  -BookInPolicy “<BDGroup>” -AllBookInPolicy $false
```
 
For a room without booking delegates:  
```Powershell
Set-CalendarProcessing -Identity "<RoomUPN>" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -DeleteComments $false -DeleteSubject $false -RemovePrivateProperty $false  
```

Set the account password to not expire and the usage location to "US"  
```Powershell
Set-AzureADUser -ObjectId "<RoomUPN>" -PasswordPolicies DisablePasswordExpiration -UsageLocation "US"
```

### **MTR Licensing**
 
Our standard group based licensing mechanism will be used to license the MTR Devices. Once the Mailbox is created and the user object is provisioned, the account will automatically be placed in the following dynamic group:
 
    License_TeamsRooms
 
The following dynamic device rule will be used to manage the group:    
    
    (user.userPrincipalName -startsWith "MTR-") and (user.accountEnabled -ne False)

### **Departmental Room List**

 
In order for the rooms to show up in the room finder, they must be added to a room list. Each department will have a single room list that contains all of the departments Teams Rooms. Departmental room lists will be created as an action item assigned during the deployment of the departments first MTR device(s) using the following Exchange Online PowerShell cmdlet:
```Powershell
New-DistributionGroup -Name “<UDEPT> Teams Rooms” -RoomList
```
 
Once the Room List has been created, existing room accounts may be added to the room list using the following Exchange Online PowerShell cmdlet:
```Powershell 
Add-DistributionGroupMember -Identity "<RoomList>" -Member "<MailboxUPN>"
```

