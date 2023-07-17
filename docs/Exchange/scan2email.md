## SMTP to SharedMailboxes

If a SharedMailbox desires to send SMTP email through the On-Prem exchange server, we need to set up routing information for the mailbox. To do so, we can start by going to the Exchange Server `RCIT-16EXCH01` or `RCIT-16EXCH02` and creating a mailcontact.  

Once logged in, open IE/Edge browser and navigate to `http://mail.rivcoca.org/ecp` > login > contacts tab  

From here, hit the `+` icon and select `Mail Contact`  

![Screenshot](../img/scan2email1.PNG)

Fill out the contact as it matches to the Exchange Online mailbox attributes. <span style="color:red">Prior to creating, ensure the Oranizational Unit is selected as `RIVCOCA.ORG/Contacts/Office 365 Cloud`</span>  

Once created, switch to ADUC and locate the contact you've created

![Screenshot](../img/scan2email2.PNG)

Open the contact (ensure advanced features are enabled so you can edit the attributes)

![Screenshot](../img/scan2email3.PNG)

Append the proxy so that `@rivco.org` is the primary, with `@rivcounty.mail.onmicrosoft.com` as a secondary

![Screenshot](../img/scan2email4.PNG)

Then change the `targetAddress` attribute to point to `@rivcounty.mail.onmicrosoft.com`  

Now go to the Exchange Online Admin portal and search the Shared Mailbox and select `Manage Email Address types` under the general tab

![Screenshot](../img/scan2email6.PNG)

Now append the primary/secondary attributes so it should have at least these 3 values

![Screenshot](../img/scan2email5.PNG)

<span style="color:red">The primary (all caps SMTP) must be the @rivco.org variant, with secondary the on-prem value.</span> Wait 20-30 minutes to allow syncs to propagate and attempt SMTP email.