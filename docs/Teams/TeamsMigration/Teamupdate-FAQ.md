# FAQ's

# What Users Will Experience After March 31, 2024

## Overview
After March 31, 2024, if you’re already running on new Teams, there will be no change in behavior. Your Teams will continue working as expected.

Users on classic Teams will be automatically updated to the new Teams client. Users won’t be able to switch back to classic Teams after this date, because classic Teams won’t be functional. Microsoft will attempt to uninstall classic Teams.

## What Happens If We Can’t Update Users to New Teams
Once classic Teams is no longer available for you, you're going to see a dialog similar to the one below, and classic Teams won't work for you anymore.

![Alt text](https://learn.microsoft.com/en-us/microsoftteams/media/teams-client-eol-notification-box.png)


Teams dialog box that appears after classic Teams no longer works, if you're unable to be updated to the new Teams client. The notification box has a link to requirements and a button that takes you to Teams on the web.

To use Teams after this point, install the new Teams client or use Teams on the web.

If you fall under the June 30, 2024 list items and you aren’t able to be updated at the end of March, your classic Teams client will continue to run until June 30, 2024. There will continue to be a warning banner at the top of your client. We do ask that users update their OS and address any other issues to continue using the Teams client after this time, as new features are only being added to the new Teams client.

## Admin Experience

### What Admins Will See Until March 31, 2024
Admins have full control over their tenant’s transition to new Teams via the Upgrade to the new Teams using policies article.

A bulk installer, including offline capability, is provided for admins who want to deploy new Teams using their own tools and process and use Teams policies to move their users to the desired experience: Bulk upgrade to the new Microsoft Teams client.

Microsoft highly recommends that admins who want more control or a more gradual rollout of new Teams take advantage of these tools and functionality to begin slowly transitioning their users to new Teams now. Policies can be targeted to individual users, groups of users, or your entire tenant to give you flexibility to release to users group by group while monitoring progress and feedback.

### What Admins Will Experience Starting March 31, 2024
Beginning March 31, 2024, all policy options within Teams Admin Center to control the transition to new Teams will be made unavailable or will no longer function for all users.

After these options are removed, Microsoft will begin moving all users except VDI users back to the Microsoft controlled policy setting. After March 31, 2024, the Microsoft controlled policy setting will equate to the user being assigned the New Teams Only policy (this policy option will be released soon). This will allow them to transition the user to new Teams and then uninstall the classic Teams client. Learn more in the Upgrade to the new Teams using policies article.

## Frequently Asked Questions

### Users
- If a user has both clients installed: Only new Teams will work after March 31, 2024, and we'll attempt to uninstall the classic Teams client.
- If only the new Teams client is installed: There won’t be any difference.
- If a user can’t install the new Teams client due to a reason outlined in the table above, such as unsupported OS (including Win 10 LTSC): These users will be allowed to use classic Teams until June 30, 2024 (as per above schedule) to allow for updating operating system to modifying permissions etc. After June 30, 2024, classic Teams won't work.

### Admins
- The system requirements for the new Teams client: [Prerequisites](https://learn.microsoft.com/en-us/microsoftteams/new-teams-deploy-using-policies?tabs=teams-admin-center)
- When will admins see the new Teams Only policy in their tenant: Upgrade to the new Teams using policies
- What will happen with the update policies: The update policies may still appear, but they won’t be functional after March 31, 2024.
- When will classic Teams client stop being installed with M365 apps: This will stop happening on March 31, 2024.
- Can I stop the classic Teams client from being uninstalled and what happens if a policy is set to prevent app uninstallation: Yes, you can stop the classic Teams client from being uninstalled. If your configuration prevents uninstall, Microsoft won't attempt the uninstall again. You'll need to uninstall classic Teams after that point.
- Do I need to remove the old client: Microsoft recommends that you remove the classic Teams client once a user has fully transitioned to new Teams. It's security best practice to not leave software that is no longer operational installed on a machine. Microsoft will attempt to remove the classic Teams client on your behalf, but if this is blocked or prevented by your configuration or policies it is your responsibility to conduct this removal yourself.
- What can I do if users still need classic Teams: You won’t be able to use classic Teams after March 31, 2024, or June 30, 2024 if you meet the conditions in the table at the start of the article. Until that date you'll still have a banner announcing the end of classic Teams at the top of your client. Please reference this page for more information: Features that are changing in the new Microsoft Teams
- Are there any scripts available if the admin needs to bulk uninstall classic Teams: Check out our uninstallation documentation.

### Client
- Will classic Teams be removed automatically: Microsoft will attempt to uninstall classic Teams after March 31, 2024. If this fails, admins must uninstall classic Teams for their users.
- When or how will it be removed, and what triggers the uninstall: This will happen after March 31, 2024. As each user receives the automatic update and switches to new Teams, an attempt will be made to uninstall classic Teams.
- Will classic Teams be removed for all users on the device: Yes.
- Will both Windows and Mac support uninstallation: Yes.
- What if I need to use classic Teams after March 31, 2024: You won’t be able to use classic Teams after March 31, 2024, or June 30, 2024 if you meet the conditions in the table at the start of the article. Until that date you'll still have a banner announcing the end of classic Teams at the top of your client. Please reference this page for more information: Features that are changing in the new Microsoft Teams
- Will I be able to download classic Teams after March 31, 2024: Yes, but it won't be functional unless you meet one of the conditions to extend classic Teams functionality until June 30, 2024.

### VDI
- Will the March 31, 2024 date apply to users on VDI devices: No, the June 30, 2024 date applies to users on VDI devices.
