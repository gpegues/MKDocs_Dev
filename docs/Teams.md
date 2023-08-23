## **General Information:**

## **Admin Requirements:**
 
## **PowerShell Modules:**

Exchange Online  
Azure AD  

## **Terms Reference and Naming Convention**
 
|   MTR   |               Microsoft Teams Rooms               |                                                   Comment(s)                                                  |
|:-------:|:-------------------------------------------------:|:-------------------------------------------------------------------------------------------------------------:|
| BDGROUP |        Identifier + " MTR Booking Allowed"        | Identifier will depend on group options selected by the department. See [Booking Delegate Group](/Teams/DeviceProvisioning/#booking-delegate-group) for more info. |
|  UDEPT  | Department attribute as it exists on user objects |                                                                                                               |
|  DDEPT  |      Department prefix of Windows 10 devices      |                                                                                                               |
 	 	 
 
 
Note:
The MTR Mailbox is attached to an Azure AD user object and therefore follows RIVCOCA user department attributes wherever `<UDEPT>` is referenced. The MTR device account is an Azure AD device, and therefore follows RIVCOCA device naming conventions wherever `<DDEPT>` is referenced. Since the M365 group naming policy in place already uses the user department attribute, distribution groups and M365 groups used for Teams Rooms will also use `<UDEPT>`.

## **Relevant Filepaths**

App cache if needing cleared:  

`%appdata%\Microsoft\Teams\blob_storage`  
`%appdata%\Microsoft\Teams\cache`  
`%appdata%\Microsoft\Teams\databases`  
`%appdata%\Microsoft\Teams\GPUCache`  
`%appdata%\Microsoft\Teams\indexedDB`  

## **Useful Links**

### **URL's**
[https://docs.microsoft.com/en-us/microsoftteams/rooms/with-office-365](https://docs.microsoft.com/en-us/microsoftteams/rooms/with-office-365)
 
[https://docs.microsoft.com/en-us/microsoftteams/rooms/rooms-release-note](https://docs.microsoft.com/en-us/microsoftteams/rooms/rooms-release-note)
 
[https://learn.microsoft.com/en-us/powershell/module/exchange/set-calendarprocessing?view=exchange-ps](https://learn.microsoft.com/en-us/powershell/module/exchange/set-calendarprocessing?view=exchange-ps)