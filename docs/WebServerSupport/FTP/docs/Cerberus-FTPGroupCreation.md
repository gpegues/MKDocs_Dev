# **User Guide: Creating and Configuring Groups in Cerberus FTP Server**

## **Overview**
This guide provides step-by-step instructions for creating a group in **Cerberus FTP Server**, binding it to an **Active Directory (AD) group**, and mapping it to a **file share**. This configuration allows AD users to authenticate via their AD credentials and access the assigned file share.

---

## **Step 1: Prepare the Active Directory Group and File Share**
Before configuring Cerberus FTP Server, ensure that you have an **Active Directory group** and a **file share folder** ready.
  - **File Share Location:** Cerberus group based FTP locations can be found at "**F:\FTPROOT\Dept**" on **ZRCIT-16SFTP01.tzone.lcl**
  - Find the department the request is for, and create a folder in that departments directory.
      - Note: You do not need to set permissions right now, this is done later by Cerberus.

### **1. Create an Active Directory (AD) Group**
> **If an existing AD group is being used, skip to Step 2. Otherwise, create a new group using the naming convention "FTP-Cerberus_Dept_Purpose" (e.g., FTP-Cerberus_RCIT_TestGroup) and record the associated TASK number in the Notes field for tracking.**

1. Open **Active Directory Users and Computers (ADUC)**.
2. Navigate to the **Departments** OU, choose the appropriate department, and then access the **Groups** OU.
3. Right-click and select **New > Group**.
4. Enter a **Group Name** (e.g., `FTP-Cerberus_RCIT_TestGroup`).
5. Choose **Group Type: Security** and **Group Scope: Global**.
6. Click **OK** to create the group.
7. Add any necessary users to this **AD group**.

### **2. Create and Configure a File Share**
> **If the folder and share already exist, skip to Step 2. Since share permissions are inherited from the parent folder, you do not need to configure them manually. Cerberus will handle access controls.**

1. On the **file server**, create a new folder (e.g., `F:\FTPROOT\Dept\RCIT` or `F:\FTPROOT\Dept\xyz`).
    - **Reminder:** The default NTFS permissions set on directories in these locations are inherited, **you do NOT need to modify NTFS permisssions. This will be controlled by Cerberus in a later step.**
---

## **Step 2: Creating a Group in Cerberus FTP Server**
1. **Log into the Cerberus FTP Server Desktop Interface on ZRCIT-16SFTP01.tzone.lcl**  
   - Open the **Cerberus FTP Server** administration console.  
   - Navigate to **User Manager**.

2. **Create a New Group**
   - In the **User Manager**, go to the **Groups** tab.
   - Click **New** to create a new group.
   - Enter a **Group Name** in the "**Group Basics**" window (e.g., `FTP-Cerberus_RCIT_TestGroup`).
     - **Important:** Whenever possible, ensure the group name matches exactly with its AD counterpart. While this may not always be feasible, it should be the standard practice for group creation.
   - Enter the **Folder Path** (or navigate to the folder in the GUI). Cerberus will map this group to the filepath.
   - Under "**File Permissions**", "**Folder Permissions**", and "**General Permissions**", configure access levels as desired:
     - At time of this writing, we appear to grant all permissions unless otherwise specified.
   - Click **Apply** to save the changes.

---

## **Step 3: Binding the Group to an Active Directory (AD) Group**
1. **Bind the Cerberus Group to an AD Group**
   - In the **AD Users** tab, under the **User & Group Custom Mappings** tab, select your newly created Cerberus group under **Active Directory Group to Cerberus Group Mapping**.
   - Click **New** and enter the name of the AD Group to be useds in the **AD Group** section. Then, in the **Cerberus Group** field, enter the name of the Cerberus Group to map.
   - Click **Add Mapping**

---

## **Conclusion: End-User Experience**
Group members of the AD group should now see the configured folder alongside their "Home" FTP directory when accessing their FTP account. Navigating into that folder should provide them with all permissions set for that location and group.
