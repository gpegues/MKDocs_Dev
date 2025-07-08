# Current Actions notes/maint

## Account Terminations (Email retention)                                                  
    
* This script runs daily at 1am UTC and terminates accounts that have hit retention end date

### Additional Info

* Uses `SVC_DrivePerms` account to make AD changes - info in 1password vault
* Sends smtp (on-prem) mailmessage only when 1 or more accounts are terminated
* Audit data stored on github actions runner server

---

## M365 Licensing Report

* This script runs daily at 2am UTC and compiles data for the M365 licensing report. Power BI component refreshes at 10pm PST

### Additional Info

* `SVC_PBIDeptLicensing` account used for on-prem components (creds in 1password)
* `Reporting_RCIT-TSB-M365` entra ID app used for graph perms
* `\\RCIT-19TSBP01\PBIReports\` path for .csv output for Power BI report
* Relevant block to maintain (currently lines 80-109) for sku name to common name switch. Preferably kept alphabetical. Can append as needed as new licenses hit our tenant:

``` pwsh
        # Before adding to $PBIdetailedLicenseAssignments, modify $productName based on specific values
        switch ($productName) {
            "AAD_PREMIUM_GOV" { $licenseName = "Microsoft Entra ID P1" }
            "AAD_PREMIUM_P2_GOV" { $licenseName = "Microsoft Entra ID P2" }
            "COPILOT_FOR_MICROSOFT_365_GCC" { $licenseName = "Microsoft 365 Copilot" }
            "FLOW_FREE" { $licenseName = "Power Automate Free" }
            "FLOW_PER_USER_GCC" { $licenseName = "Power Automate Per User" }
            "M365_F1_GOV" { $licenseName = "Microsoft 365 F3" }
            "M365_G3_GOV" { $licenseName = "Microsoft 365 G3" }
            "M365_G5_GCC" { $licenseName = "Microsoft 365 G5" }
            "MEETING_ROOM_GOV" { $licenseName = "Teams Meeting Room Standard" }
            "MICROSOFT_BUSINESS_CENTER" { $licenseName = "Microsoft Business Center" }
            "Microsoft_Teams_Audio_Conferencing_select_dial_out_GCC" { $licenseName = "Teams Audio Conferencing" }
            "Microsoft_Teams_Premium_GCC" { $licenseName = "Teams Premium" }
            "MICROSOFT_TEAMS_Rooms_Pro_GCC" { $licenseName = "Microsoft Teams Rooms Pro" }
            "POWER_BI_STANDARD" { $licenseName = "Fabric (Free)" }
            "POWERAPPS_PER_USER_GCC" { $licenseName = "Power Apps Premium" }
            "POWERAPPS_VIRAL" { $licenseName = "Power Apps Plan 2 Trial" }
            "POWERAUTOMATE_ATTENDED_RPA_GCC" { $licenseName = "Power Automate Premium" }
            "POWERBI_PRO_GOV" { $licenseName = "Power BI Pro" }
            "PROJECTPROFESSIONAL_GOV" { $licenseName = "Project Plan 3" }
            "RIGHTSMANAGEMENT_ADHOC" { $licenseName = "Rights Management Adhoc" }
            "SPZA_IW" { $licenseName = "Apps Connect" }
            "VIRTUAL_AGENT_USL_GCC" { $licenseName = "Copilot Studio" }
            "VISIOCLIENT_GOV" { $licenseName = "Visio Plan 2" }
            "VISIOONLINE_PLAN1_GOV" { $licenseName = "Visio Plan 1" }
            "Win10_VDA_E3_GCC" { $licenseName = "Win OLS Activation User G3" }
            "WINE5_GCC_COMPAT" { $licenseName = "Windows 10/11 Enterprise E5" }
            default { $licenseName = $productName } # Keep original name if it doesn't match any case
        }
```




---

## Misc.

- **Repository**: <https://github.com/rivcoit/Actions/tree/main>
