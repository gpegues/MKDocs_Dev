# Riverside County Email Retention Policies

# Purpose

This document outlines the technical policies and retention tags for managing email in Microsoft Exchange Online, ensuring compliance with organizational and regulatory requirements.

---

# Email Retention Policies

Email retention in Exchange Online is managed through Messaging Records Management (MRM), which uses **retention tags** and **retention policies** to automate archiving and deletion of emails.

## Key Concepts

- **Retention Tags**: Define how long to retain items and what action to take (delete or archive).
  - **Default Policy Tag (DPT)**: Applies to all untagged items.
  - **Retention Policy Tag (RPT)**: Applies to default folders (e.g., Inbox, Deleted Items).
  - **Personal Tag**: Users can apply these tags to individual messages or folders.

- **Retention Policies**: Collections of tags applied to mailboxes. Each mailbox can have only one retention policy assigned at a time.

Reference: [Microsoft Docs – Retention Tags and Policies](https://learn.microsoft.com/en-us/exchange/security-and-compliance/messaging-records-management/retention-tags-and-policies)

---

## Retention Policy Table

The following table outlines our current email retention rules:

| Name                                       | Type                | Retention Period | Retention Action | Retention Policy     | Available to Users | Description |
|-------------------------------------------|---------------------|------------------|------------------|----------------------|--------------------|-------------|
| 1 Month Delete                             | Personal            | 30 days          | Delete           | Not specified        | No                 | A personal tag that deletes items after 30 days. Users cannot apply this manually. |
| 1 Week Delete                              | Personal            | 7 days           | Delete           | Not specified        | No                 | A personal tag that deletes items after 7 days. Users cannot apply this manually. |
| 1 Year Delete                              | Personal            | 365 days         | Delete           | Not specified        | Yes                | A personal tag that deletes items after 1 year. Users can manually apply this tag. |
| 5 Year Delete                              | Personal            | 1825 days        | Delete           | Not specified        | Yes                | A personal tag that deletes items after 5 years. Users can manually apply this tag. |
| 6 Month Delete                             | Personal            | 180 days         | Delete           | Not specified        | No                 | A personal tag that deletes items after 6 months. Users cannot apply this manually. |
| Calendar - Never Delete                    | Calendar            | Unlimited        | None             | A-50                 | No                 | A retention policy tag for the Calendar folder configured to never delete items. |
| Default MRM - 2 years move to archive      | Default             | 730 days         | Archive          | Default MRM          | No                 | A default policy tag that archives untagged items after 2 years. |
| Default MRM - Personal 1 year move to archive | Personal          | 365 days         | Archive          | Default MRM          | Yes                | A personal tag that archives items after 1 year. Users can apply this tag. |
| Default MRM - Personal 5 year move to archive | Personal          | 1825 days        | Archive          | Default MRM          | Yes                | A personal tag that archives items after 5 years. Users can apply this tag. |
| Deleted Items - Daily Removal              | Deleted Items       | 1 day            | Delete           | Default MRM, A-50    | Yes                | A retention policy tag applied to the Deleted Items folder, deleting items after 1 day. |
| Drafts - Never Delete                      | Drafts              | Unlimited        | None             | A-50                 | No                 | A retention policy tag for the Drafts folder that retains items indefinitely. |
| Inbox - Never Delete                       | Inbox               | Unlimited        | None             | A-50                 | No                 | A retention policy tag for the Inbox folder that retains items indefinitely. |
| Journal - Never Delete                     | Journal             | Unlimited        | None             | A-50                 | No                 | A retention policy tag for the Journal folder that retains items indefinitely. |
| Junk Email - Never Delete                  | Junk Email          | Unlimited        | None             | A-50                 | No                 | A retention policy tag for the Junk Email folder that retains items indefinitely. |
| Never Delete                               | Personal            | Unlimited        | None             | Not specified        | No                 | A personal tag that prevents deletion. Users cannot apply this manually. |
| Notes - Never Delete                       | Notes               | Unlimited        | None             | A-50                 | No                 | A retention policy tag for the Notes folder that retains items indefinitely. |
| Outbox - Never Delete                      | Outbox              | Unlimited        | None             | A-50                 | No                 | A retention policy tag for the Outbox folder that retains items indefinitely. |
| Personal - Never Delete                    | Personal            | Unlimited        | None             | Not specified        | No                 | A personal tag configured to retain items indefinitely. Not available to users. |
| Sent Items - Never Delete                  | Sent Items          | Unlimited        | None             | A-50                 | No                 | A retention policy tag for the Sent Items folder that retains items indefinitely. |
| Skype Conversation History - Daily Removal | Conversation History| 1 day            | Delete           | A-50                 | No                 | A tag that deletes Skype/Teams conversation history after 1 day. |

### Field Definitions

- **Name**: The label identifying the retention policy tag.
- **Type**: The folder or message type the tag applies to (e.g., Personal, Inbox, Calendar).
- **Retention Period**: How long items are retained. “Unlimited” means no auto-deletion or archiving.
- **Retention Action**: What happens after the period expires (Delete or Archive).
- **Retention Policy**: The policy name used in Exchange Online or Microsoft Purview.
- **Available to Users**: Indicates whether the tag is visible/applicable by end users.
- **Description**: A brief explanation of how the policy behaves and who can use it.

Reference: [Create Retention Policies](https://learn.microsoft.com/en-us/exchange/security-and-compliance/messaging-records-management/create-a-retention-policy)

---

# Microsoft Teams Retention Policy

| Name                            | Type               | Retention Period | Action  | Status  | Description                                                                 |
|--------------------------------|--------------------|------------------|---------|---------|-----------------------------------------------------------------------------|
| Teams - Chat - A50 Retention Policy | Conversation History | 1 day            | Delete  | Enabled | A retention policy that deletes all Teams chat history after 1 day to comply with Board Policy A-50 Section 7. |

Reference: [Retention for Microsoft Teams](https://learn.microsoft.com/en-us/purview/retention#learn-about-retention-for-teams)

---

## Mailbox Retention Requests

Departments may request to retain a former employee's mailbox. This option is selected during the Service Now Termination process and are ingrained in these request forms dependent on a requestor's selection to the **"Does the department want to retain any email"** option. If "Yes" is selected, the submitter is shown additional options for retention. These options are as follows:

- **What date can the inbox be deleted?**
- **Please select the employee to grant "delegate" full access to review the inbox**

## Conditions for Retained Mailboxes

- **Mailbox ≤ 50GB**: Can be converted to a shared mailbox; no license is required.
- **Mailbox > 50GB**: Requires an active license; costs billed to the requesting department.

Reference: [Convert a Mailbox](https://learn.microsoft.com/en-us/exchange/recipients-in-exchange-online/convert-a-mailbox)

## Mailbox Deletion Lifecycle

When an employee departs, their mailbox goes through a two-phase deletion process:

1. **Soft Deletion**: The mailbox is marked for deletion but remains recoverable for 30 days. During this period, the mailbox can be restored if needed.
2. **Hard Deletion**: After the 30-day soft deletion period, the mailbox is permanently deleted and cannot be restored.

> If a **Litigation Hold** has been applied to the entire mailbox, or if a **Content Hold** has been placed on specific items within the mailbox due to a current legal hold, the mailbox will transition to what is known as an **Inactive Mailbox** at the time of hard deletion. This ensures that the mailbox is preserved for compliance purposes.

### Inactive Mailboxes

**Definition**: An inactive mailbox is a mailbox that has been preserved for compliance purposes, such as litigation hold or content hold, and is no longer active or discoverable for regular use outside of Microsoft Purvue and Exchange Online Adminstrators. Inactive mailboxes are retained to ensure that all data is available for eDiscovery and compliance reviews.

**How a Mailbox Becomes Inactive**:
- **Litigation Hold**: When a litigation hold is applied to the entire mailbox, and **Hard Deletion** occurs, it is preserved in its entirety, including all items and folders. The mailbox becomes inactive but is not deleted, ensuring that all data is retained for the duration of the hold.
- **Content Hold**: When a content hold is applied to specific items within the mailbox, and **Hard Deletion** occurs, those items are preserved and cannot be deleted. The rest of the mailbox follows the standard deletion lifecycle, but the held items remain accessible for eDiscovery and compliance purposes.

### Comparison: Content Hold vs. Litigation Hold

| **Feature**                   | **Content Hold (Purview Policy)**        | **Litigation Hold**             |
|------------------------------|------------------------------------------|---------------------------------|
| **Scope**                    | Only content matching policy             | Entire mailbox                  |
| **Preserves deleted items?** | Only matching content                    | Yes (all items)                 |
| **Overrides retention cleanup** | No                                   | Yes                             |
| **Applies to non-email?**    | Yes (SharePoint, OneDrive, etc.)         | Exchange content only           |

**Reference**:  
[Microsoft: Retain and delete content with retention policies](https://learn.microsoft.com/en-us/microsoft-365/compliance/retention?view=o365-worldwide)

---

## Disclaimer
This document provides general guidance on email management policies. Specific situations may require interpretation or exceptions.

## Appendix A: Retention Policy References
- **Board Policy A-50:** [Policy A-50](https://rivcocob.org/sites/g/files/aldnop311/files/migrated/wp-content-uploads-2018-11-POLICY-A50.pdf)
- **Email Default MRM:** [MRM Retention policies | Microsoft Purview](https://purview.microsoft.com/datalifecyclemanagement/exchange/retentionpolicies?tid=d7f03410-e0a8-4159-b300-54980ef605d0)
- **Email A-50 Retention Policy:** [MRM Retention policies | Microsoft Purview](https://purview.microsoft.com/datalifecyclemanagement/exchange/retentionpolicies?tid=d7f03410-e0a8-4159-b300-54980ef605d0)
