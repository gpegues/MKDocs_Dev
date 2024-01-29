# Modern Teams Client Compatibility Prerequisites

| Requirement              | Details                                                                                                                                                                                                                                                                                               |
|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Windows**              | Windows 10 version 10.0.19041 or higher (excluding Windows 10 LTSC for Teams desktop app)                                                                                                                                                                                                              |
| **Webview2**             | Update to the most current version. [Learn more about Enterprise management of WebView2 Runtimes](https://docs.microsoft.com/en-us/deployedge/webview2-enterprise-distribution)                                                                                                                        |
| **Teams app**            | Version 1.6.00.4472 to see the "Try the new Teams" toggle.<br>If you are at a lower version, select the overflow menu (…) > Check for updates > Update. Then restart your app.                                                                                                                         |
| **Settings**             | Turn on the "Show Notification Banners" setting in System > Notifications > Microsoft Teams to receive Teams Notifications.                                                                                                                                                                           |
| **Delivery Optimization (DO)** | DO powers Teams automatic updates, which are required as part of the Servicing Agreement.<br>**Overview**: [What is Delivery Optimization?](https://docs.microsoft.com/en-us/windows/deployment/update/waas-delivery-optimization)<br>**Recommended settings**: [Set up Delivery Optimization](https://docs.microsoft.com/en-us/windows/deployment/update/waas-delivery-optimization-settings)<br>**Note**: Download Mode 100 (Bypass) isn't supported. |
| **Classic Teams App**    | Version 1.6.00.4472 or later to see the Try the new Teams toggle. Important: Classic Teams is only a requirement if you want users to be able to switch between classic Teams and new Teams. This prerequisite is optional if you only want your users to see the new Teams client.
## Required Microsoft 365 Apps Security Updates

| Channel                         | Version & Build             |
|---------------------------------|-----------------------------|
| **Semi-Annual Enterprise Channel** | Version 2302 (Build 16130.20306)<br>Version 2208 (Build 15601.20578) |
| **Monthly Enterprise Channel**     | Version 2301 (Build 16026.20222)<br>Version 2212 (Build 15928.20294) |
| **Office LTSB**                    | Version 2018 (Build 10396.20023)<br>Version 2021 (Build 14332.20481) |
