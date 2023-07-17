## **Creating a user’s remote mailbox**

 
* Locate/Confirm user account has been created– through AD/AAD (Helpdesk creates user accounts) 

* Connect to RCIT-16EXCH01 or RCIT-16EXCH02 

* Open “Exchange Management Shell” 

    * Execute the following commands (replacing `username` and `UPN` with appropriate name)

    ```Powershell
    Enable-RemoteMailbox -identity “UPN@RIVCO.org” -RemoteRoutingAddress “username@rivcounty.mail.onmicrosoft.com” 
    ```
    ```Powershell
    Enable-RemoteMailbox -identity “UPN@RIVCO.ORG” -Archive 
    ```

* Log into AAD and locate the user’s account 

    * Add to `License_M365_G3_V3` licensing group if not already present (this will apply 20 of 25 sku's, currently, and auto-assign `location usage` to `United States` as its set to the tenant default)