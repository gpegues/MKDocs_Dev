# Creating a New Edge Subscription in Microsoft Exchange via PowerShell

Create a new Edge Subscription for a Microsoft Exchange Edge Transport server using PowerShell commands. This process generates an XML file on the Edge Transport server, which you will then import on the Hub Transport servers.

**This is done on an Edge Transport Server when any of the following events occur**:
- **Initial Deployment**: When you first deploy an Edge Transport server in your Exchange organization, you need to create an Edge Subscription to establish secure, replicated communication between an Edge Transport server and the Hub Transport servers inside your Active Directory site.
- **Replacement or Upgrade**: Replacing an old Edge Transport server with a new one (due to hardware upgrades, for example), you would need to create a new Edge Subscription for the new server.
- **Recovery from Failure**: In cases where the Edge Transport server fails and needs to be rebuilt or restored, a new Edge Subscription might be necessary to re-establish the broken trust and communication flow with the internal Exchange servers.
- **Topology Changes**: If there are significant changes in your network topology — for example, changes in how mail flow is routed or in the layout of network segments — reconfiguring or adding new Edge Transport servers with fresh Edge Subscriptions might be required.
- **Security Purposes**: In scenarios where the Edge Transport server's security is compromised (like a breach or serious malware infection), you might decide to decommission the affected server and create a new Edge Subscription with a new, clean server to maintain the integrity of your mail flow and security.

## Prerequisites

- **Administrative Access**: Ensure you have administrative rights on both the Edge Transport and the Hub Transport servers.
- **PowerShell**: You must have PowerShell access on both servers.
- **Network Connectivity**: Ensure servers are properly connected.

## 1. Generating the Edge Subscription File on the Edge Transport Server

### 1.1 Create the Subscription File 

On the Edge Transport server, execute:

```powershell
New-EdgeSubscription -FileName "C:\EdgeSubscriptionInfo.xml"
```
_Note: "C:\EdgeSubscriptionInfo.xml" can be changed to your desired file path._

### 1.2 Transfer the XML File
Securely move the EdgeSubscriptionInfo.xml from the Edge Transport server to the Hub Transport server. This is sensitive file, follow security standards.

## 2. Importing the XML File on the Hub Transport Server

### 2.1 Import the Subscription File
On the Hub Transport server, run:
```powershell
New-EdgeSubscription -CreateInboundSendConnector $false -CreateInternetSendConnector $false -FileData ([byte[]]$(Get-Content -Path $xmlFilePath -Encoding Byte -ReadCount 0)) -Site "RC3"
```
- _Note: "Do not change parameters "-CreateInboundSendConnector $false -CreateInternetSendConnector $false", as doing so will recreate both send and receive connectors._

_Note: You will need to define "-Path" which should be the path to your XML file you moved to the server in question from Step 1.2._

### 2.2 Verify the Edge Subscription
Check the setup:
``` powershell
Get-EdgeSubscription
```
The output should provide details about the new Edge Subscription.

## 3. Post-Configuration Steps
- Replication: Wait for data replication between the Edge Transport and Hub Transport servers.
- Test Mail Flow: Check mail flow inside and outside your organization.
- Monitoring: Monitor the Edge Transport server for unusual activities or errors.
- **Delete the XML file created for this process from the Hub and Edge Server**.
  - The XML file generated during the Edge Subscription process includes sensitive information about our Exchange configuration. This information could be exploited by an unauthorized user to gain insights into your email system's infrastructure, security settings, and operational details.

### Troubleshooting
- Date & Time: Verify both servers' date and time settings.
- Connectivity: Confirm network connectivity and name resolution between servers.
- Event Logs: Review the application event logs for potential errors.
- Restart relevant services: MSExchangeTransport, MSExchangeEdgeSync
