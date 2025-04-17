# GitHub Onboarding Process

This document outlines the steps required to get access to the organization's GitHub environment.

## Onboarding Steps:

1.  **Submit ServiceNow Request:**
    * Initiate the process by submitting a licensed software request through ServiceNow.
    * Use this link: [Licensed Software Request](https://rivcoitprod.service-now.com/esc?id=sc_cat_item&sys_id=e2a42186db562200afd5f2b6af96198b)

2.  **Software Management (SAM) Team Approval:**
    * The SAM Team will review and approve your request.
    * Upon approval, they will forward the task to the M365 Team.

3.  **M365 Team Assignment:**
    * The M365 Team receives the task and assigns your request to the `RCIT-GitHub` Unified Group.

4.  **Automated Group Sync (Power Automate):**
    * An automated Power Automate flow monitors the `RCIT-GitHub` group.
    * This flow automatically adds new members (like you) to a separate group named `RCIT-AZApp-GitHub-RCIT-Provision`. This group is specifically configured to synchronize with GitHub.

5.  **GitHub Account Provisioning (SCIM):**
    * The System for Cross-domain Identity Management (SCIM) process detects the addition to the `RCIT-AZApp-GitHub-RCIT-Provision` group.
    * SCIM automatically provisions a GitHub account for you and sends an invitation email to your work address.

6.  **Accept Invitation & Account Setup:**
    * Open the invitation email from GitHub.
    * Follow the link to accept the invitation and complete the setup for your new GitHub account.

7.  **License Application & Organization Access:**
    * Once your account is created and you've accepted the invite, a GitHub user license is automatically applied.
    * You will be added as a member to the "RivCoIT" organization within GitHub.

You should now have access to the RivCoIT GitHub organization. If you encounter any issues, please refer back to your ServiceNow ticket or contact IT support.