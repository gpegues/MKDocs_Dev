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

## **Useful Links**

### **URL's**
[https://docs.microsoft.com/en-us/microsoftteams/rooms/with-office-365](https://docs.microsoft.com/en-us/microsoftteams/rooms/with-office-365)
 
[https://docs.microsoft.com/en-us/microsoftteams/rooms/rooms-release-note](https://docs.microsoft.com/en-us/microsoftteams/rooms/rooms-release-note)
 
[https://learn.microsoft.com/en-us/powershell/module/exchange/set-calendarprocessing?view=exchange-ps](https://learn.microsoft.com/en-us/powershell/module/exchange/set-calendarprocessing?view=exchange-ps)