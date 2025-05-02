# Certify The Web (CTW) Process Outline

## Overview
This document outlines how **Certify The Web (CTW)** will function in our environment.

---

## Steps to Follow

### 1. License Request
- **Action:** Server admin creates a request for the license.
- **Note:**  
  - CTW can be installed on any server (internal or in the tzone) needing to download SSL certificates.  
  - Requirement: The DNS Zone must be hosted by **NS1 and NS2.Riverside.ca.us**.  
  - Check DNS zone eligibility [Abongo](https://abongo.com/)

---

### 2. Software Installation
- **Action:** After submitting the SNOW request, the server admin installs and updates the CTW software.
- **Next Step:**  
  - Remote access to the server to add license information.  
  - Create the connection string for Infoblox.
- **Requirement:** **NS1.riverside.ca.us and NS2.riverside.ca.us** must be authoritative for the required DNS zone.

---

### 3. Licensing and Credentials
- **Action:** Once licensed and credentials are entered, the server admin can create certificates.
- **Credential Information:**
  - `BServer`: ns2mgmt.riverside.ca.us  
  - `IBView`: External-NS1andNS2  
  - `IBCred`:  
    - Username: svc_acme  
    - Password: Stored in 1Password Team Vault (This is under "Infoblox")
  - `IBIgnoreCert`: `$true` (used due to a self-signed certificate on Infoblox)

---

### 4. Notification to System Administrator
- **Action:** System Administrator receives email alerts for expiring certificates.
- **Email Content:**  
  - Informs that RCIT has purchased a product to handle automated certificate renewal.  
  - Configured for DNS validation.  
  - Automatically renews and installs certificates every 3 months.

---

### 5. Using Certify The Web
- **Product:** Certify The Web - ACME for Windows (Let's Encrypt and other ACME CAs)
- **Alternative:** Sectigo is the primary method.  
  CTW is optional for admins seeking automation.

---

### 6. License Information
- **License Key:** Certify Certificate Manager Enterprise (100 Servers, 12-Months)
- **Dashboard:** [Certify the Web Dashboard URL](https://certifytheweb.com/profile)
- **Email:** rcit-webadmin@rivco.org  
- **Password:** Located in 1Password Team Vault 
- **License Key:** 11BB02CA-5A4A-4009-9D76-BD8118BDBAAC 
- **Expiration:** 2026-02-14
- **Activation:** Enter the license key under the *About* tab. No additional steps needed for renewals.

---

### 7. Managed Certificate Notifications
- **Action:**  
  - Use the Certify The Web app on your server for detailed information.  
  - If registered on [certifytheweb.com](https://certifytheweb.com), summary info for all certificates is available.

---
---

## How Certify The Web (CTW) Works

This guide outlines the certificate automation and deployment process using Certify The Web (CTW).

---

## 1. Start
- **Trigger**: Need to renew or create an SSL certificate.

---

## 2. Check Domain and DNS Records
- **Action**: Verify domain ownership through DNS verification.
- **Decision**:
  - **Yes**: Domain ownership verified.
  - **No**: DNS records need to be updated.

---

## 3. Create or Renew Certificate
- **Action**: Initiate the certificate creation or renewal process in CTW.

---

## 4. Select Certificate Type
- **Options**:
  - **Standard SSL**: Simple domain-validated certificate.
  - **Wildcard SSL**: Covers all subdomains.

---

## 5. Configure Certify The Web
- **Steps**:
  - Enter domain names.
  - Select validation method (DNS, HTTP, etc.).
  - Choose the Certificate Authority (e.g., Let's Encrypt).
  - Set up auto-renewal options.

---

## 6. DNS Verification (If Applicable)
- **Action**: CTW updates DNS TXT records (via automation or manual update).
- **Decision**:
  - **Success**: Proceed to the next step.
  - **Failure**: Retry or perform manual intervention.

---

## 7. Generate Certificate
- **Action**: CTW generates the SSL certificate upon successful validation.

---

## 8. Post-Request Tasks
- **Action**: Set up post-request tasks to distribute and install the certificate.
- **Options**:
  - **Script Execution**: Run PowerShell scripts for distribution.
  - **Automated Task**: Use CTW tasks for installing on IIS or other services.

---

## 9. Deploy Certificate
- **Action**: Deploy the certificate to required services (e.g., IIS, load balancer).

---

## 10. Verify SSL Installation
- **Action**: Confirm the certificate is correctly installed and active.
- **Decision**:
  - **Success**: Certificate is active.
  - **Failure**: Troubleshoot installation issues.

---

## 11. Set Up Monitoring and Alerts
- **Action**: Configure monitoring and alerts for certificate validity and renewal.

---

## 12. End
- **Result**: SSL certificate is successfully automated and deployed.

---

## Visual Workflow - How CTW Works

```mermaid
flowchart TD
    A[Start] --> B[Check Domain and DNS Records]
    B -->|Verified| C[Create or Renew Certificate]
    B -->|Not Verified| B1[Update DNS Records] --> B[Check Domain and DNS Records]
    C --> D[Select Certificate Type]
    D --> E[Configure Certify The Web]
    E --> F[DNS Verification]
    F -->|Success| G[Generate Certificate]
    F -->|Failure| F1[Retry or Manual Intervention] --> F
    G --> H[Post-Request Tasks]
    H --> H1[Script Execution]
    H --> H2[Automated Task]
    H --> I[Deploy Certificate]
    I --> J[Verify SSL Installation]
    J -->|Success| K[Set Up Monitoring and Alerts]
    J -->|Failure| J1[Troubleshoot] --> I
    K --> L[End]
