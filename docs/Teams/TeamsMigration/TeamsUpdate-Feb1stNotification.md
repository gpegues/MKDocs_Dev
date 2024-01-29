# [End of Availability for Classic Teams Client](https://learn.microsoft.com/en-us/microsoftteams/teams-classic-client-end-of-availability)

## Overview
On March 31, 2024, a new Teams client will be rolled out for users who are still on classic Teams, installing the new Teams client for them and uninstalling the classic Teams client. After this time, classic Teams will be unavailable for different users as outlined in this table:

| Availability area                           | Date         | Link                                                      |
| ------------------------------------------ | ------------ | --------------------------------------------------------- |
| Windows                                    | March 31, 2024 |                                                          |
| Mac                                        | March 31, 2024 |                                                          |
| EDU                                        | March 31, 2024 |                                                          |
| Web                                        | March 31, 2024 |                                                          |
| Government Cloud (GCC, GCC High, DOD)      | March 31, 2024 |                                                          |
| Policy and prerequisite blocked users (non-EDU) | March 31, 2024 | [Troubleshooting installation issues in the new Teams client](link) |
| VDI                                        | June 30, 2024 | [Upgrade to new Teams for Virtualized Desktop Infrastructure (VDI)](link) |
| Unsupported OS users (including Win 10 LTSC) | June 30, 2024 | [Prerequisites](link) |
| Policy and prerequisite blocked users (EDU)| June 30, 2024 | [Troubleshooting installation issues in the new Teams client](link) |

### User experience
#### What users will see until March 31, 2024
Starting on February 1, 2024, any classic Teams users who haven't updated to new Teams will begin seeing an informational banner to remind them about the timeline for the auto update. This banner will appear in the main Teams client window at the top of the page (underneath the main bar).

![Image](https://learn.microsoft.com/en-us/microsoftteams/media/teams-client-eol-switch-banner.png)
* You can dismiss this banner in every client session until the end of February 2024, but it will reappear with each client launch.

Classic Teams will remain available to use until March 31, 2024. However, we highly encourage admins to update their users to new Teams, as new features are only being added to the new Teams client. Learn more in the [Upgrade to the new Teams using policies article](link).

If users are on an unsupported OS (including Win 10 LTSC), you'll see a slightly different banner messaging:

![Banner Image](https://learn.microsoft.com/en-us/microsoftteams/media/teams-client-eol-requirements-banner.png)

* Users on a June 30th timeline will see this banner from April 1, 2024.

Here's a list of the banner messages you may experience after January 31, 2024:

| Condition for triggering the banner | Banner message | Further information |
| ----------------------------------- | -------------- | ------------------- |
| Classic Teams is being used, new Teams is installed | Classic Teams won't be available for use after March 31, 2024. You’ll be switched to the new Teams after this date. Switch now | |
| Classic Teams is being used, new Teams is not installed | Classic Teams won't be available for use after March 31, 2024. Get the new Teams | |
| Microsoft cannot update because of policy restrictions (Commercial) | Classic Teams won’t be available for use after March 31, 2024, and we can't update to the new Teams due to org policy. For more info, contact your IT admin. Learn more | [Troubleshooting installation issues in the new Teams client](link) |
| If your Teams update policy is set to Not enabled | Classic Teams won’t be available for use after March 31, 2024. Contact your IT admin to switch to the new Teams. Learn more | Classic Teams users to be updated to new Teams after March 31, 2024 |

#### What users will experience after March 31, 2024
After March 31, 2024, if you’re already running on new Teams, there will be no change in behavior. Your Teams will continue working as expected.

Users on classic Teams will be automatically updated to the new Teams client. Users won’t be able to switch back to classic Teams after this date, because classic Teams won’t be functional. Microsoft will attempt to uninstall classic Teams.

If you're on the June timeline, here's a list of the banner messages you may experience after March 31, 2024:

| Condition for triggering the banner | Banner message | Further information |
| ----------------------------------- | -------------- | ------------------- |
| Unsupported Windows operating system | Classic Teams won't be available for use after June 30, 2024. To use the new Teams, update your OS to meet requirements or contact your IT admin | [Prerequisites](link) |
| Unsupported Mac operating system | Classic Teams won't be available for use after June 30, 2024. To use the new Teams, update your OS to meet requirements or contact your IT admin | [Prerequisites](link) |
| Unsupported operating system (EDU) | Classic Teams won't be available for use after June 30, 2024. To use the new Teams, update your OS to meet requirements or contact your IT admin | [Prerequisites](link) |
| Unsupported operating system (Gov) | Classic Teams won't be available for use after June 30, 2024. To use the new Teams, update your OS to meet requirements or contact your IT admin | [Prerequisites](link) |
| Unsupported OS (VDI) | Classic Teams won't be available for use after June 30, 2024. To use the new Teams, update your OS to meet requirements or contact your IT admin | [Prerequisites](link) |
| Microsoft cannot update because of policy restrictions (EDU) | Classic Teams won't be available for use after June 30, 2024, and we can't update to the new Teams due to org policy. For more info, contact your IT admin. Learn more | |

## Admin experience
### What admins will see until March 31, 2024
Admins have full control over their tenant’s transition to new Teams via the [Upgrade to the new Teams using policies article](link).

A bulk installer, including offline capability, is provided for admins who want to deploy new Teams using their own tools and process and use Teams policies to move their users to the desired experience: [Bulk upgrade to the new Microsoft Teams client](link).

Microsoft highly recommends that admins who want more control or a more gradual rollout of new Teams take advantage of these tools and functionality to begin slowly transitioning their users to new Teams now. Policies can be targeted to individual users, groups of users, or your entire tenant to give you flexibility to release to users group by group while monitoring progress and feedback.

### What admins will experience starting March 31, 2024
Beginning March 31, 2024, all policy options within Teams Admin Center to control the transition to new Teams will be made unavailable or will no longer function for all users.

After these options are removed, Microsoft will begin moving all users except VDI users back to the Microsoft controlled policy setting. After March 31, 2024
