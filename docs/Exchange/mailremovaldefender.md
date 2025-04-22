# Email Removal Using Microsoft Defender

## Purpose
To provide a step-by-step procedure for identifying and removing malicious, compromised, or otherwise critical emails across Microsoft 365 tenant mailboxes using Microsoft Defender for Office 365.

---

## Prerequisites

- Microsoft Defender
- Security Administrator or Global Administrator role
- Access to Microsoft 365 Defender Portal: [https://security.microsoft.com](https://security.microsoft.com)

---

## Step 1: Identify the Malicious Email

1. Navigate to **Microsoft 365 Defender Portal**.
2. Go to:  
   **Email & Collaboration** > **Explorer** (or **Real-time Detections**).
3. Use filters to locate the email:
   - **Sender address**
   - **Subject keywords**
   - **Date/time**
4. Review message details:
   - Preview content, links, and headers
   - Confirm it's a malicious or unauthorized message

> Tip: Use **"Threat View"** to pivot into other recipients or message traces.

> **Explorer is limited** in filter flexibility. You cannot manually input multi-condition queries like `Sender AND Subject AND Date`. For advanced logic, use **Advanced Hunting**.

---

## Step 2: Select Messages for Removal

1. In Explorer, **check the box** next to each matching message.
2. Click **“Take action”** > **Delete message**.
3. Choose **Hard delete** to permanently remove the email:
   - This bypasses the Recoverable Items folder
   - Use only if recovery is not required

> Hard delete is irreversible.

---

## Step 3: Monitor and Complete Remediation

1. Go to:  
   **Email & Collaboration** > **Action Center**
2. Locate your action under the **Pending** or **Completed** tab.
3. Click the action to view:
   - Status (Queued, Completed, Failed)
   - Number of affected messages
   - Affected user mailboxes
4. Wait for status to update:
   - Typically completes in 5–30 minutes
   - May remain **Queued** if messages were already deleted, read, or moved

5. If the remediation completes or remains Queued with 0 results, click **"Delete Remediation"** to clear it from the portal.
   - This does **not reverse the action** — it only removes the remediation entry.

6. Use **Unified Audit Logs** or **Message Trace** to confirm message flow and visibility:
   ```powershell
   Get-MessageTrace -SenderAddress compromised@yourdomain.com -StartDate (Get-Date).AddDays(-2)
