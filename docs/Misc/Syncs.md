# Sync Processes

Be aware of the following sync processes:

## Active Directory Sync

- **Non-RIVCOCA to RIVCOCA domain (such as DPSS)**: Syncs at the top of every hour.

## Azure AD Connect Sync

- Syncs continuously, usually around 20-30 minutes after being created in on-prem AD.

## PeopleSoft Attributes Sync

<ul>
<li>Syncs twice a day, around 6am and 6pm. (Times need verification)</li>
<li>The following attributes sync from PeopleSoft to AD:
    <ul>
    <li>Physicaldelivery</li>
    <li>officename</li>
    <li>streetAddress</li>
    <li>Initials</li>
    <li>street</li>
    <li>postalCode</li>
    <li>city</li>
    <li>title</li>
    <li>DeptID</li>
    <li>Manager</li>
    </ul>
</li>
</ul>

## ProofPoint Sync

- Updates to reflect Exchange recipients every 4 hours.
- Last validated with Identity in August 2023.