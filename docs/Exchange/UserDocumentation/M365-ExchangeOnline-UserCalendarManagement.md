# M365 - User Guide for Outlook Calendar Usage and Best Practices

## <ins>Table of Contents</ins>
1. [Event Creation and Management](#event-creation-and-management)
2. [Meeting Scheduling](#meeting-scheduling)
3. [Sharing and Permissions](#sharing-and-permissions)
4. [Calendar Best Practices](#Calendar-Best-Practices)
5. [Limitations and Unsupported Items](#Limitations-and-unsupported-items)

## <ins>Event Creation and Management</ins>
Instructions on creating, editing, and managing events, with separate steps for Outlook for Desktop and Outlook on the Web (OWA).

### Creating an Event
- **Outlook for Desktop**: [Microsoft: User Training - Schedule events in Outlook for Windows](https://support.microsoft.com/en-us/office/schedule-events-in-outlook-for-windows-dee84520-3c7f-45a1-990b-98bbeca7ec31)
- **Outlook Online (OWA)**: [Microsoft: User Training - Schedule events in Outlook on the Web](https://support.microsoft.com/en-us/office/schedule-events-in-outlook-on-the-web-95304ab3-9596-46b8-bd8b-2d0532404d6b)

### Editing an Event
- **Outlook for Desktop**: [Microsoft: User Training - Modify events in Outlook for Windows](https://support.microsoft.com/en-us/office/change-an-appointment-meeting-or-event-in-outlook-29b44f7a-8938-4b99-b98d-3efcf45f7613#ID0EBBD=Classic_Outlook)
- **Outlook Online (OWA)**: [Microsoft: User Training - Modify events in Outlook on the Web](https://support.microsoft.com/en-us/office/create-modify-or-delete-a-meeting-request-or-appointment-in-outlook-on-the-web-6283f744-4ce1-470e-9d6b-96fa94e52996#:~:text=Modify%20a%20meeting%20or%20appointment%3A%201%20At%20the,Send%20if%20this%20is%20a%20meeting%20with%20attendees.)

### Deleting an Event
- **Outlook for Desktop**: [Microsoft: User Training - Delete events in Outlook for Windows](https://support.microsoft.com/en-us/office/delete-an-appointment-or-a-meeting-2703bfdb-9a07-4396-be3b-a9f79438455b#:~:text=1%20At%20the%20bottom%20of%20the%20screen%2C%20click,choose%20to%20delete%20the%20Occurrence%20or%20the%20Series.)
- **Outlook Online (OWA)**: [Microsoft: User Training - Delete events in Outlook on the Web](https://support.microsoft.com/en-us/office/create-modify-or-delete-a-meeting-request-or-appointment-in-outlook-on-the-web-6283f744-4ce1-470e-9d6b-96fa94e52996)

### Managing Time Zones
- **Outlook for Desktop and OWA**: [Microsoft: User Training: Time Zone Management - All Platforms](https://support.microsoft.com/en-us/office/add-remove-or-change-time-zones-5ab3e10e-5a6c-46af-ab48-156fedf70c04#ID0EBBD=Windows_(newer_versions))

## <ins>Meeting Scheduling</ins>
Guidance on scheduling meetings, inviting attendees, and booking rooms/resources.

### Inviting Attendees
- **Outlook for Desktop**: [Microsoft: User Training - Invite Attendees in Outlook for Windows](https://support.microsoft.com/en-us/office/schedule-events-in-outlook-for-windows-dee84520-3c7f-45a1-990b-98bbeca7ec31)
- **Outlook Online (OWA)**: [Microsoft: User Training - Invite Attendees in Outlook on the Web](https://support.microsoft.com/en-us/office/schedule-events-in-outlook-on-the-web-95304ab3-9596-46b8-bd8b-2d0532404d6b)

### Room and Resource Booking
- **Outlook for Desktop and OWA**: [Microsoft: User Training - Scheduling Assistant and Room Finder for meetings in Outlook - All Platforms](https://support.microsoft.com/en-us/office/use-the-scheduling-assistant-and-room-finder-for-meetings-in-outlook-2e00ac07-cef1-47c8-9b99-77372434d3fa)

## <ins>Sharing and Permissions</ins>
How to share your calendar and set up permissions, with steps for each platform.

### Sharing Your Calendar
- **Outlook for Desktop**: [Microsoft: User Training - Sharing your Calendar in Outlook for Windows](https://support.microsoft.com/en-us/office/share-your-calendar-in-outlook-2fcf4f4f-8d46-4d8b-ae79-5d94549e531b#:~:text=Share%20your%20calendar%201%20Select%20Calendar%20%3E%20Share,the%20access%20level%20to%20give%2C%20and%20select%20OK.)
- **Outlook Online (OWA)**: [Microsoft: User Training - Sharing your Calendar in Outlook on the Web](https://support.microsoft.com/en-us/office/share-your-calendar-in-outlook-on-the-web-7ecef8ae-139c-40d9-bae2-a23977ee58d5)

### Connecting to a Shared Calendar
- **Outlook for Desktop and OWA**: [Microsoft: User Training - Open another person's Exchange Calendar](https://support.microsoft.com/en-us/office/open-another-person-s-exchange-calendar-2257f515-408f-48ea-9363-11d0d5848c77#ID0EBBD=Microsoft_365)

  - Please Note: When a calendar is shared with a recipient, Outlook will attempt to send an email that will allow the user to connect to the calendar.
    
    - If permissions are changed by a calendar owner at a future time, or the individual already has an active connection to a calendar being re-shared with them in their Outlook client, it is recommended that the recipient remove the prior version of the calendar from their Outlook client to ensure permissions are appropriately updated. Failure to do this can result in users receiving access related errors to the calendar.

## <ins>Calendar Best Practices</ins>

Effective use of an Outlook Calendar involves following best practices to ensure proper functionality.
- Source: [Microsoft Best Practices](https://support.microsoft.com/en-us/office/best-practices-for-organizations-when-using-the-outlook-calendar-d93f72d3-2361-4e0d-8d6a-5c4939c17f39)

### Process all meeting requests and cancellations

- Although you can delete a meeting request directly from your Inbox, you should properly process the meeting request by either accepting or declining it. Always use the Remove from Calendar command to process meeting cancellations from your Inbox. Avoid processing meetings directly from the Calendar module. Failure to do this can result in broken event functionality, that both Microsoft and RCIT will be unable to restore, as this is no current Microsoft support in the product for this, at the time of this writing.

- In the event where a calendar becomes unmanagable by its original organizer, you will need to recreate the event and re-invite all original participants.
  - Prior participants will also need to manually remove the prior version of the meeting manually. 

### Working with recurring meetings

**Set end dates and limit the number of occurrences**

- Outlook makes it easy to schedule a meeting that has multiple regular occurrences. We recommend that you always set an end date and limit the recurring series to a specific number of occurrences. Most likely, recurring meetings will require modifications at some point. For example, attendees will be added to or removed from a single occurrence, or the meeting location or time will change due to vacation dates or unforeseen circumstances. Outlook saves each of these unique changes as a meeting exception. Meetings with a very large number of exceptions result in a meeting series that is difficult to manage. Additionally, it can introduce unexpected behavior. You can always create a new meeting series when the current one ends. When thinking about the number of occurrences, consider the frequency. In the period of a year, a twice weekly meeting will have about 90 more occurrences than a monthly meeting during that same period. 

**End a recurring meeting before the original end date**
  
- Although you can cancel a recurring meeting, a better option is to change the end date for the series. This allows you and the attendees to keep a record of the meetings that occurred in the past. If you cancel the recurring meeting altogether, that history is lost. The best option is to set a new end date and then send the update to all attendees. This ends the meeting series early, while keeping a record of previous meetings.

### Change the organizer

- Outlook does not provide a way to change a meeting organizer. To change the meeting organizer of a recurring meeting, end the recurring meeting. To do this, set an earlier end date and send the update to all attendees. After you complete this step, the new organizer should create a new recurring meeting.

  - For more information about setting an earlier end date, see [Cancel a meeting](https://support.microsoft.com/en-us/office/cancel-a-meeting-9e1eac0d-0462-4a01-ad0b-7d0543819562)

### Avoid using a recurring meeting to share attachments

- Attachments add to the complexity of recurring meeting exceptions. Each exception contains its own copy of the attachments. As exceptions are added to recurring meetings, new copies of the attachments are created. If you make changes to one set of attachments, these changes do not propagate to the other exceptions. If you require that all attendees have the most recent copy of changes for any given meeting, share the documents via a sharing service, such as OneDrive. Enterprise users can take advantage of SharePoint or other shared file server on the network.

  - Note: The actions of adding and removing attachments to standalone, non-recurring meetings are fully supported.
 
### Avoid copying meetings

- By design, Outlook removes any links between a copied meeting and the original meeting. This helps prevent inconsistencies. Newer versions of Outlook add the text string "Copy:" to the subject. This makes it easy to identify meeting copies.
- Actions related to copied meetings yield unexpected results, so we recommend avoiding copying meetings. This applies to both meetings copied from another user's calendar, as well as those copied from another calendar folder that you own.
- For more information about how to move meetings that you organized to another calendar folder, see:

  - How to move Outlook meetings without losing the option to "[Send Update](https://learn.microsoft.com/en-US/outlook/troubleshoot/calendaring/send-update-missing-copy-meeting)"
  - Please note, RCIT cannot restore events which have been copied, and this should be avoided when possible. Performing this is at your own risk.

### Maintain add-ins that integrate with Outlook

- Most, if not all, Outlook add-ins access Outlook data. An add-in may change an Outlook item that you are editing at the same time, whether in Outlook or on another device. This can introduce conflicts. To minimize the likelihood, make sure to install the latest updates for any add-ins or programs that integrate with Outlook. Uninstall or disable any of these programs and add-ins that you do not use or that do not need to integrate with Outlook.

  - Note: In some cases, multiple Outlook clients and devices may modify items at the same time, which can introduce conflicts. To minimize the likelihood, do not process the same item on two or more clients or devices within a relatively short period of time.

### Limit the number of Calendar Delegates

Outlook does not limit the number of delegates that you can add. However, we recommend that you only grant Editor permissions to one (1) delegate. This allows you to track when and how a meeting was processed. Considering the fact that a delegate can use multiple devices to access your data, having many delegates with Editor permissions makes it very difficult to determine why meetings are missing or out of date.

Even if you only grant Editor permissions to one delegate, avoid adding a large number of delegates with Reviewer or Contributor permissions. This is because adding large numbers of delegates may exhaust other resources. For example, the size limit for rule data may be reached. When you add a delegate, various changes take place:

- Outlook applies permissions to relevant folders.
- The PublicDelegates Active Directory attribute is updated to add "Send on Behalf of" permissions to the delegate.
- Outlook adds the delegate to a forward rule on the manager's mailbox. This forwards meeting requests to the delegate.
- Outlook saves additional delegate information in the manager's mailbox.

Each of these component areas may have different limits. Nearing these limits can affect performance and stability. RCIT cannot change, fix, or resolve problem arisen from using calendars beyond recommended limitations, as these are product limitations at the Microsoft level.

Additional Notes: 

  - During development and testing of modern Outlook calendar functionality, Microsoft used a maximum of four (4) delegates. RCIT does not recommend or support going beyond this limit.
  - If a delegate with Editor permissions must be replaced either temporarily or indefinitely, change the permissions from Editor to Reviewer or none. Then, grant Editor permissions to the new or backup delegate.

## Unsupported Calendar Items
Current limitations regarding RCIT support for Outlook calendar functionality and behavior.

### Limitations and Unsupported Items
- **Calendar Events and Meetings:** RCIT cannot reassign, recover, or restore functionality to events, meetings, or organizers. 
- **Deleted Items Recovery:** RCIT has very limited ability to recover deleted calendar items. 
- **Personal Device Synchronization:** Support for syncing issues on personal, non-corporate devices is not supported.
- **Customization Restrictions:** RCIT only supports default interface and functionality for the base Outlook Client experience.

RCIT cannot support the above items due to the absence of administrative support within the product itself. These items are behaving as designed by Microsoft at the current time of writing this document. Should we have the ability to provide more robust service regarding these items in the future, we will update this document to reflect this.

## Additonal Support
For additional support and latest updates, always refer to the [Microsoft 365 support page](https://support.microsoft.com/office).
