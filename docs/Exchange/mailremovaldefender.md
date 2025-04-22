# Email Removal Using Microsoft Defender

## Purpose
To provide a step-by-step procedure for identifying and removing malicious, compromised, or otherwise critical emails across Microsoft 365 tenant mailboxes using Microsoft Defender for Office 365.

---
## Prerequisites

- Security Administrator or Global Administrator role
- Access to Microsoft 365 Defender Portal: [https://security.microsoft.com](https://security.microsoft.com)

---

## Step 1: Identify and Remediate Malicious Email

1. Navigate to the **Microsoft 365 Defender Portal**.
2. Go to **Email & Collaboration** > **Explorer** (or **Real-time Detections**).
3. Use filters to locate the email, such as:
   
   - **Sender address**
   - **Subject keywords**
   - **Date/time**
  
4. Under the **Email** tab, review and select any messages requiring action.
5. Click **Message actions** and choose the appropriate remediation (e.g., **Soft delete**, **Hard delete**).
   
   - This triggers the creation of a **remediation event**, which can be monitored in **Email & Collaboration** > **Review**.
   - The **Review** pane provides:
   
     - A summary of actions taken
     - Completion and success status
     - Exportable logs showing what was applied, to which messages, and in which mailboxes

> **Tip**: Use **Threat View** to pivot into other recipients or related message activity.
> 
> **Note**: Explorer filtering is limited and does not support multi-condition queries (e.g., `Sender AND Subject AND Date`).
>
> For more complex scenarios, we should look into using **Advanced Hunting** [Microsoft Defender XDR Advanced hunting API](https://learn.microsoft.com/en-us/defender-xdr/api-advanced-hunting). 

---

## Step 2: Monitor and Confirm Remediation

1. Go to **Email & Collaboration** > **Action Center**.
2. Locate your remediation action under the **Pending** or **Completed** tab.
3. Click the action to view:
   
   - Status (e.g., Queued, Completed, Failed)
   - Number of messages affected
   - Affected mailboxes
     
4. Wait for status to update. Actions typically complete in **5–30 minutes**, but may stay **Queued** longer if messages were already deleted, moved, or read.

> You can delete the remediation entry from the Action Center after confirming it is complete — this will not undo the action, only remove it from the dashboard.
