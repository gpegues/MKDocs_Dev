# FAQ's

# What Users Will Experience After March 31, 2024

## Overview
After March 31, 2024, if you’re already running on new Teams, there will be no change in behavior. Your Teams will continue working as expected.

Users on classic Teams will be automatically updated to the new Teams client. Users won’t be able to switch back to classic Teams after this date, because classic Teams won’t be functional. Microsoft will attempt to uninstall classic Teams.

## What Happens If We Can’t Update Users to New Teams?
Once classic Teams is no longer available for you, you're going to see a dialog similar to the one below, and classic Teams won't work for you anymore.

![Alt text](https://learn.microsoft.com/en-us/microsoftteams/media/teams-client-eol-notification-box.png)


Above is an image of a Teams dialog box that appears after classic Teams no longer works, if you're unable to be updated to the new Teams client. The notification box has a link to requirements and a button that takes you to Teams on the web.

To use Teams after this point, installing the new Teams client is a requirement for usage, or use Teams on the web.

## Admin Experience

### What Admins Will See Until March 31, 2024
Admins have full control over their tenant’s transition to new Teams via the Upgrade to the new Teams. For more detailed information, please refer to Microsoft's [new teams deploy using policie](https://learn.microsoft.com/en-us/microsoftteams/new-teams-deploy-using-policies?tabs=teams-admin-center#prerequisites) documentation.

A bulk installer, including offline capability, is provided for admins who want to deploy new Teams using their own tools and process and use Teams policies to move their users to the desired experience: [Bulk upgrade to the new Microsoft Teams client](https://learn.microsoft.com/en-us/microsoftteams/new-teams-bulk-install-client).

Microsoft highly recommends that admins who want more control or a more gradual rollout of new Teams take advantage of these tools and functionality to begin slowly transitioning their users to new Teams now. Policies can be targeted to individual users, groups of users, or your entire tenant to give you flexibility to release to users group by group while monitoring progress and feedback.

### What Admins Will Experience Starting March 31, 2024
Beginning March 31, 2024, all policy options within Teams Admin Center to control the transition to new Teams will be made unavailable or will no longer function for all users.

After these options are removed, Microsoft will begin moving all users except VDI users back to the Microsoft controlled policy setting. After March 31, 2024, the Microsoft controlled policy setting will equate to the user being assigned the New Teams Only policy (this policy option will be released soon). This will allow them to transition the user to new Teams and then uninstall the classic Teams client. Learn more in the Upgrade to the new Teams using policies article.

## Frequently Asked Questions

### Users
- Can a user have both clients installed?
  - Yes. However, only the new Teams client will work after March 31, 2024.
- If I have the new Teams client installed prior to March 31, 2024, will I have any additional action items?
  - No. 

### Admins
- What are the system requirements for the new Teams client?
  
  - Please see the following Microsoft Documentation: [Prerequisites](https://learn.microsoft.com/en-us/microsoftteams/new-teams-deploy-using-policies?tabs=teams-admin-center)
- What will happen with Teams administrative update policies?

  - The update policies may still appear, but they won’t be functional after March 31, 2024.
  
- When will classic Teams client stop being installed with M365 apps?

  - This will stop happening on March 31, 2024.
    
- Do we need to remove the old client and/or also "Teams-Wide Installer" from legacy deployments?

  - Yes. Microsoft recommends that you remove the classic Teams client once a user has fully transitioned to new Teams. It's security best practice to not leave software that is no longer operational installed on a machine. Microsoft will attempt to remove the classic Teams client on our behalf, but if this is blocked or prevented by your configuration or policies it will become our responsibility to conduct this removal ourselves.
    
- What can be done if users still need classic Teams due to a no longer supported feature?
  
  - Unfortuantely, the level of change happening is not one within control of RCIT, and is a Microsoft level change. You will not be able to use Classic Teams after March 31, 2024, or June 30, 2024 if you meet [specific conditions](https://learn.microsoft.com/en-us/microsoftteams/new-teams-automatic-upgrade-announced). Until that date you'll still have a banner announcing the end of classic Teams at the top of your client. Please reference this page for more information: Features that are changing in the new Microsoft Teams

### Client Devices
- Will classic Teams be removed automatically?
  
  - Microsoft will attempt to uninstall classic Teams after March 31, 2024. If this fails, IT organizations must uninstall classic Teams for their users.
    
- When or how will it be removed, and what triggers the uninstall?
  
  - This will happen after March 31, 2024. As each user receives the automatic update and switches to new Teams, an attempt will be made to uninstall classic Teams.
  - The Installation/Uninstall can be triggered by launching the classic Teams client on and/or after March 31st, 2024.
  - For more information, please see Microsoft's [Teams Client Update Servicing Agreement](https://learn.microsoft.com/en-us/microsoftteams/teams-client-update#servicing-agreement) literature.
    
- Are User settings migrated as part of the upgrade?
  
  - Yes, however settings can only be only migrated once during the first time a user updates to new Teams. After that, no incremental migrations of setting changes will occur if the user switches back and forth between classic and new.
  - For a list of items which are migrated, please refer to the following link for a detailed table of items: [User Settings Migration](https://learn.microsoft.com/en-us/microsoftteams/new-teams-deploy-using-policies?tabs=teams-admin-center#prerequisites)
    
- Will classic Teams be removed for all users on a device?
  
  - Yes.
    
- What if I need to use classic Teams after March 31, 2024?
  - You won’t be able to use classic Teams after March 31, 2024, or June 30, 2024 if you meet the conditions in the table at the start of the article. Until that date you'll still have a banner announcing the end of classic Teams at the top of your client. Please reference this page for more information: Features that are changing in the new Microsoft Teams
    
- Will I be able to download classic Teams after March 31, 2024?
  
  - Yes, but it won't be functional unless you meet one of the conditions to extend classic Teams functionality until June 30, 2024, which is not common for Riverside County. At this time, only Teams Room Devices fall under this criteria.
