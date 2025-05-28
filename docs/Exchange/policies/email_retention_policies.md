# Email Retention Policies

## Overview
Email retention policies dictate how long emails are stored and what actions are taken on them. The following table details the specific email retention policies in our data lifecycle management:

| Name                              | Type                | Retention Period | Retention Action | Retention Policy | Available to Users |
|-----------------------------------|---------------------|------------------|------------------|------------------|--------------------|
| 1 Month Delete                    | Personal            | 30 days          | Delete           |                  |                    |
| 1 Week Delete                     | Personal            | 7 days           | Delete           |                  |                    |
| 1 Year Delete                     | Personal            | 365 days         | Delete           |                  | X                  |
| 5 Year Delete                     | Personal            | 1825 days        | Delete           |                  | X                  |
| 6 month Delete                    | Personal            | 180 days         | Delete           |                  |                    |
| Calendar - Never Delete           | Calendar            | Unlimited        | Delete           | A-50             |                    |
| Default MRM - 2 years move to archive | Default             | 730 days         | Archive          | Default MRM      |                    |
| Default MRM - Personal 1 year move to archive | Personal            | 365 days         | Archive          | Default MRM      | X                  |
| Default MRM - Personal 5 year move to archive | Personal            | 1825 days        | Archive          | Default MRM      | X                  |
| Deleted Items - Daily Removal     | Deleted Items       | 1 day            | Delete           | Default MRM, A-50 | X                  |
| Drafts - Never Delete             | Drafts              | Unlimited        | Delete           | A-50             |                    |
| Inbox - Never Delete              | Inbox               | Unlimited        | Delete           | A-50             |                    |
| Journal - Never Delete            | Journal             | Unlimited        | Delete           | A-50             |                    |
| Junk Email - Never Delete         | Junk Email          | Unlimited        | Delete           | A-50             |                    |
| Never Delete                      | Personal            | Unlimited        | Delete           | Not specified    |                    |
| Notes - Never Delete              | Notes               | Unlimited        | Delete           | A-50             |                    |
| Outbox - Never Delete             | Outbox              | Unlimited        | Delete           | A-50             |                    |
| Personal - Never Delete           | Personal            | Unlimited        | Delete           | Not specified    |                    |
| Sent Items - Never Delete         | Sent Items          | Unlimited        | Delete           | A-50             |                    |
| Skype Conversation History - Daily Removal | Conversation History | 1 day            | Delete           | A-50             |                    |

## Default Behavior
If a retention policy is not applied to a certain category, the emails or items in that category will not be subject to any specific retention actions. This means that they will remain in their respective folders indefinitely until manually deleted by the user or until a general policy or action is applied to them.

## Detailed Policies
### 1 Month Delete
- **Type:** Personal
- **Retention Period:** 30 days
- **Retention Action:** Delete
- **Retention Policy:** Not specified
- **Available to Users:** No

### 1 Week Delete
- **Type:** Personal
- **Retention Period:** 7 days
- **Retention Action:** Delete
- **Retention Policy:** Not specified
- **Available to Users:** No

### 1 Year Delete
- **Type:** Personal
- **Retention Period:** 365 days
- **Retention Action:** Delete
- **Retention Policy:** Not specified
- **Available to Users:** Yes

### 5 Year Delete
- **Type:** Personal
- **Retention Period:** 1825 days
- **Retention Action:** Delete
- **Retention Policy:** Not specified
- **Available to Users:** Yes

### 6 month Delete
- **Type:** Personal
- **Retention Period:** 180 days
- **Retention Action:** Delete
- **Retention Policy:** Not specified
- **Available to Users:** No

### Calendar - Never Delete
- **Type:** Calendar
- **Retention Period:** Unlimited
- **Retention Action:** Delete
- **Retention Policy:** A-50
- **Available to Users:** No

### Default MRM - 2 years move to archive
- **Type:** Default
- **Retention Period:** 730 days
- **Retention Action:** Archive
- **Retention Policy:** Default MRM
- **Available to Users:** No

### Default MRM - Personal 1 year move to archive
- **Type:** Personal
- **Retention Period:** 365 days
- **Retention Action:** Archive
- **Retention Policy:** Default MRM
- **Available to Users:** Yes

### Default MRM - Personal 5 year move to archive
- **Type:** Personal
- **Retention Period:** 1825 days
- **Retention Action:** Archive
- **Retention Policy:** Default MRM
- **Available to Users:** Yes

### Deleted Items - Daily Removal
- **Type:** Deleted Items
- **Retention Period:** 1 day
- **Retention Action:** Delete
- **Retention Policy:** Default MRM, A-50
- **Available to Users:** Yes

### Drafts - Never Delete
- **Type:** Drafts
- **Retention Period:** Unlimited
- **Retention Action:** Delete
- **Retention Policy:** A-50
- **Available to Users:** No

### Inbox - Never Delete
- **Type:** Inbox
- **Retention Period:** Unlimited
- **Retention Action:** Delete
- **Retention Policy:** A-50
- **Available to Users:** No

### Journal - Never Delete
- **Type:** Journal
- **Retention Period:** Unlimited
- **Retention Action:** Delete
- **Retention Policy:** A-50
- **Available to Users:** No

### Junk Email - Never Delete
- **Type:** Junk Email
- **Retention Period:** Unlimited
- **Retention Action:** Delete
- **Retention Policy:** A-50
- **Available to Users:** No

### Never Delete
- **Type:** Personal
- **Retention Period:** Unlimited
- **Retention Action:** Delete
- **Retention Policy:** Not specified
- **Available to Users:** No

### Notes - Never Delete
- **Type:** Notes
- **Retention Period:** Unlimited
- **Retention Action:** Delete
- **Retention Policy:** A-50
- **Available to Users:** No

### Outbox - Never Delete
- **Type:** Outbox
- **Retention Period:** Unlimited
- **Retention Action:** Delete
- **Retention Policy:** A-50
- **Available to Users:** No

### Personal - Never Delete
- **Type:** Personal
- **Retention Period:** Unlimited
- **Retention Action:** Delete
- **Retention Policy:** Not specified
- **Available to Users:** No

### Sent Items - Never Delete
- **Type:** Sent Items
- **Retention Period:** Unlimited
- **Retention Action:** Delete
- **Retention Policy:** A-50
- **Available to Users:** No

### Skype Conversation History - Daily Removal
- **Type:** Conversation History
- **Retention Period:** 1 day
- **Retention Action:** Delete
- **Retention Policy:** A-50
- **Available to Users:** No
