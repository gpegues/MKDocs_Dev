# Updating Cerberus SFTP Server on Windows Server

## Purpose

This document provides step-by-step instructions for updating **Cerberus FTP Server** on a Windows Server. It includes both the automatic updater and manual upgrade process, as recommended by the vendor. Keeping Cerberus up to date ensures security, performance, and compatibility improvements.

---

## Upgrading Cerberus FTP Server: Two Methods Explained



When it comes to upgrading your existing installation of Cerberus FTP Server, there are two methods at your disposal: the built-in auto-updater and the manual upgrade using the latest installer. Both methods are detailed below for your convenience.
Regardless of the chosen upgrade method, the installer follows a sequential process. It initiates by stopping the Cerberus FTP Server service, proceeds to uninstall the current installation, and concludes by installing the latest release. It's essential to note that the uninstallation strictly impacts the program files, leaving the server configuration and user settings untouched—ensuring a seamless transition.
The entire upgrade process typically takes around 5 minutes and seldom necessitates a system reboot. However, it's important to acknowledge that the Cerberus FTP Server service will be temporarily unavailable during the upgrade.

> **IMPORTANT**:
> Always create a backup of your users and settings from the Cerberus Tools menu before proceeding with the upgrade. Utilize the Backup Users and Settings option to generate a zip file encompassing all your Cerberus settings and users.
> During the update, if you intend to change the service account that Cerberus runs as, opt for the manual update method, described as Method 2 below. Updating through Method 1 utilizes a reduced UI mode, retaining the previous service account.

> **Note:** Official documentation is available here:  
> [Cerberus FTP Server – Update Instructions](https://support.cerberusftp.com/hc/en-us/articles/115001944930-How-do-I-update-Cerberus-FTP-Server-to-the-latest-release)


## Prerequisites

- Administrative access to the Windows Server hosting Cerberus
- Internet access (for the auto-updater to connect over HTTPS)
- Access to [Cerberus FTP Downloads](https://www.cerberusftp.com/download/) if doing a manual update
- Backup of existing Cerberus configuration

---

## Backup Configuration

Although the upgrade preserves settings, you should back up prior:

- In the UI, go to **Tools** > **Backup Users and Settings**
- Save the file to a secure location

---

## Method 1: Using the Auto-Updater

Cerberus FTP Server includes a built-in automatic updater that streamlines the upgrade process.

1. **Open the Cerberus Admin Console**.
2. Navigate to the **Help** menu from the top bar.
3. Select **Check For Update**.
4. The **Upgrade Check** dialog will display your current version and any available update.
    - If **no update is available**, the **Update** button will be disabled. Click **Close** to exit.
    - If an update **is available**, the **Update** button will be enabled and release notes will be shown.
5. Click **Update** to begin the upgrade.
6. The Cerberus UI will close, and the installer will automatically launch.
7. Choose default options during installation. The installer will:
    - Remove the old version
    - Preserve all users and configuration settings
8. After installation, Cerberus FTP Server will be running the latest version.

> **Note**: The updater connects to `www.cerberusftpserver.com` over **HTTPS (port 443)**.

---

## Method 2: Manually Download and Install

Use this method if the auto-updater is not available or fails.

1. Go to the [Cerberus Download Page](https://www.cerberusftp.com/download/).
2. Download the latest installer.
    - Note: **32-bit versions are no longer supported as of Cerberus version 12**.
3. In the Cerberus Admin Console:
    - Go to **File** > **Exit** to close the UI.
4. Open **Services** (`services.msc`) and **stop** the **Cerberus FTP Server** service to avoid restarts during install.
5. Run the new installer (right-click > **Run as Administrator**).
6. Choose default options through the installation wizard.
    - For the service account, select **"Use Current"**.
7. The installer will:
    - Uninstall the current version
    - Preserve all users and configuration
    - Install the latest version
8. Once complete, Cerberus FTP Server will be upgraded and ready for use.

---

## Post-Update Validation

1. **Start the Cerberus FTP Server service** if it did not start automatically.
2. Open the **Cerberus Admin Console** to confirm the upgrade.
   - Go to **Help** > **About** to verify the version number.
3. Test **SFTP functionality** using a client like **WinSCP** or **FileZilla**.
4. Check **logs** in the UI for any errors or warnings post-upgrade.

---
