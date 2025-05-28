# Riverside County Email Retention Policies

## Purpose
This document outlines the technical policies and retention tags for managing email for Riverside County.

## Scope
These policies apply to all employees, contractors, and any other individuals using the Riverside County email system.

## Email Retention Policies
Email retention policies dictate how long emails are stored and what actions are taken on them. The following table details the specific email retention policies in our data lifecycle management:

| Name                              | Type                | Retention Period | Retention Action | Retention Policy | Available to Users |
|-----------------------------------|---------------------|------------------|------------------|------------------|--------------------|
| 1 Month Delete                    | Personal            | 30 days          | Delete           | Not specified    | No                 |
| 1 Week Delete                     | Personal            | 7 days           | Delete           | Not specified    | No                 |
| 1 Year Delete                     | Personal            | 365 days         | Delete           | Not specified    | Yes                |
| 5 Year Delete                     | Personal            | 1825 days        | Delete           | Not specified    | Yes                |
| 6 month Delete                    | Personal            | 180 days         | Delete           | Not specified    | No                 |
| Calendar - Never Delete           | Calendar            | Unlimited        | Delete           | A-50             | No                 |
| Default MRM - 2 years move to archive | Default             | 730 days         | Archive          | Default MRM      | No                 |
| Default MRM - Personal 1 year move to archive | Personal            | 365 days         | Archive          | Default MRM      | Yes                |
| Default MRM - Personal 5 year move to archive | Personal            | 1825 days        | Archive          | Default MRM      | Yes                |
| Deleted Items - Daily Removal     | Deleted Items       | 1 day            | Delete           | Default MRM, A-50 | Yes                |
| Drafts - Never Delete             | Drafts              | Unlimited        | Delete           | A-50             | No                 |
| Inbox - Never Delete              | Inbox               | Unlimited        | Delete           | A-50             | No                 |
| Journal - Never Delete            | Journal             | Unlimited        | Delete           | A-50             | No                 |
| Junk Email - Never Delete         | Junk Email          | Unlimited        | Delete           | A-50             | No                 |
| Never Delete                      | Personal            | Unlimited        | Delete           | Not specified    | No                 |
| Notes - Never Delete              | Notes               | Unlimited        | Delete           | A-50             | No                 |
| Outbox - Never Delete             | Outbox              | Unlimited        | Delete           | A-50             | No                 |
| Personal - Never Delete           | Personal            | Unlimited        | Delete           | Not specified    | No                 |
| Sent Items - Never Delete         | Sent Items          | Unlimited        | Delete           | A-50             | No                 |
| Skype Conversation History - Daily Removal | Conversation History | 1 day            | Delete           | A-50             | No                 |

### Policy Definitions
- **Name:** The identifier for the specific retention policy.
- **Type:** The category of email to which the policy applies.
- **Retention Period:** The duration for which emails are stored. “Unlimited” indicates no automatic deletion or archiving.
- **Retention Action:** The action taken on emails after the retention period (e.g., deletion or archiving).
- **Retention Policy:** Any internal policy code or name associated with the retention rule found in Microsoft Purview under Data Lifecycle Management.
- **Available to Users:** Indicates whether users can apply or see this policy.

## Microsoft Teams Retention Policies
Microsoft Teams retention policies dictate how long chat history is stored and what actions are taken on it. This policy is to delete all "CHAT" Sessions to comply with Board Policy A-50 Section 7 requirements.

| Name                              | Type                | Retention Period | Retention Action | Status  |
|-----------------------------------|---------------------|------------------|------------------|---------|
| Teams - Chat - A50 Retention Policy | Conversation History | 1 day            | Delete           | Enabled |

## Employee Off-boarding – Email Handling

### Mailbox Deletion Process
When an employee leaves the organization, their email account undergoes a two-stage deletion process:
- **Soft Deletion:** Initially, the mailbox is "soft-deleted." This means it is marked for deletion but is still recoverable by an administrator. The default soft deletion period is 30 days.
- **Hard Deletion:** If the mailbox is not recovered or a retention request is not approved within the soft deletion period, it is "hard-deleted." Hard deletion is a permanent removal of the mailbox and its contents, and recovery is generally not possible after this point.

### Mailbox Retention Requests
In specific circumstances, a manager or department head may request the retention of an off-boarded employee's mailbox. Such requests must be submitted within the soft deletion period.

### Conditions for Retained Mailboxes
If a mailbox retention request is approved, the following conditions will be applied to manage storage and licensing costs:
- **Mailbox Size Limit for Shared Mailboxes:** If the mailbox size is 50GB or less, the mailbox will be converted to a shared mailbox. Shared mailboxes do not typically require a separate license.
- **Mailboxes Exceeding 50GB:** If the mailbox size exceeds 50GB, retaining it will require an active license. The department that requests the retention will be charged the cost of this license.

## Disclaimer
This document provides general guidance on email management policies. Specific situations may require interpretation or exceptions.

## Appendix A: Retention Policy References
- **Board Policy A-50:** [Policy A-50](https://rivcocob.org/sites/g/files/aldnop311/files/migrated/wp-content-uploads-2018-11-POLICY-A50.pdf)
- **Email Default MRM:** [MRM Retention policies | Microsoft Purview](https://purview.microsoft.com/datalifecyclemanagement/exchange/retentionpolicies?tid=d7f03410-e0a8-4159-b300-54980ef605d0)
- **Email A-50 Retention Policy:** [MRM Retention policies | Microsoft Purview](https://purview.microsoft.com/datalifecyclemanagement/exchange/retentionpolicies?tid=d7f03410-e0a8-4159-b300-54980ef605d0)
