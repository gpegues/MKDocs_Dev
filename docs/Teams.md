<span style="font-size:larger;">**General Information:**</span>

<span style="font-size:larger;">**Admin Requirements:**</span>
 
<span style="font-size:larger;">**PowerShell Modules:**</span>  
Exchange Online  
Azure AD  

<span style="font-size:larger;">**Terms Reference and Naming Convention**</span>
 
|   MTR   |               Microsoft Teams Rooms               |                                                   Comment(s)                                                  |
|:-------:|:-------------------------------------------------:|:-------------------------------------------------------------------------------------------------------------:|
| BDGROUP |        Identifier + " MTR Booking Allowed"        | Identifier will depend on group options selected by the department. See [Booking Delegate Group](https://teams.microsoft.com/l/entity/com.microsoft.teamspace.tab.wiki/tab::5046c47c-3534-426d-88d2-6c8d43997494?context=%7B%22subEntityId%22%3A%22%7B%5C%22pageId%5C%22%3A15%2C%5C%22sectionId%5C%22%3A19%2C%5C%22origin%5C%22%3A2%7D%22%2C%22channelId%22%3A%2219%3A4dfd8341204049f5bc2038ce5e97a672%40thread.skype%22%7D&tenantId=d7f03410-e0a8-4159-b300-54980ef605d0) for more info. |
|  UDEPT  | Department attribute as it exists on user objects |                                                                                                               |
|  DDEPT  |      Department prefix of Windows 10 devices      |                                                                                                               |
 	 	 
 
 
Note:
The MTR Mailbox is attached to an Azure AD user object and therefore follows RIVCOCA user department attributes wherever `<UDEPT>` is referenced. The MTR device account is an Azure AD device, and therefore follows RIVCOCA device naming conventions wherever `<DDEPT>` is referenced. Since the M365 group naming policy in place already uses the user department attribute, distribution groups and M365 groups used for Teams Rooms will also use `<UDEPT>`.

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


## **Device Management**

### **Teams Rooms Application**
The teams rooms app is listed as Microsoft.SkypeRoomSystem in the discovered apps list in intune. The app uses the Microsoft Store and auto updates in the background. Version history here:
 
[https://docs.microsoft.com/en-us/microsoftteams/rooms/rooms-release-note](https://docs.microsoft.com/en-us/microsoftteams/rooms/rooms-release-note)

## **Useful Links**

### **URL's**
[https://docs.microsoft.com/en-us/microsoftteams/rooms/with-office-365](https://docs.microsoft.com/en-us/microsoftteams/rooms/with-office-365)
 
[https://docs.microsoft.com/en-us/microsoftteams/rooms/rooms-release-note](https://docs.microsoft.com/en-us/microsoftteams/rooms/rooms-release-note)
 
[https://learn.microsoft.com/en-us/powershell/module/exchange/set-calendarprocessing?view=exchange-ps](https://learn.microsoft.com/en-us/powershell/module/exchange/set-calendarprocessing?view=exchange-ps)