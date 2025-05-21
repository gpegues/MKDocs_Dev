# Additional Applications for Supported Gateway Connectors

Additional software required for certain Power BI On-Premises Data Gateway connectors.

## Currently Supported Applications

- [Oracle Client for Microsoft Tools (64-bit)](#oracle-client-for-microsoft-tools-64-bit)
- [Microsoft Access Database Engine 2016 Redistributable (64-bit)](#microsoft-access-database-engine-2016-redistributable-64-bit)

---

## Oracle Client for Microsoft Tools (64-bit)

### Gateway Connection Types

- Oracle
- ODBC
- Any custom connector leveraging unmanaged ODP.NET

### Installation

1. Download the latest version of OCMT from [Oracle](https://download.oracle.com/otn_software/odac/Oracle-Client-for-Microsoft-Tools-64-bit.exe).
2. Ensure the gateway server is ready for maintenance by following steps 1-2 of the ["Update and Reboot Process"](patching-clustered-gateways.md#update-and-reboot-process).
3. Launch the downloaded executable to run the installer.
4. Select the default options, with the exception of the "Oracle Configuration File Directory", which should be changed to `C:\Oracle\network\admin`.
5. Restart the Power BI Gateway.
6. Test by creating a sample connection in Power BI Gateway.

### Upgrades & Patching

- Follow the same procedure as the installation.

### Notes & Reference
- [Oracle official installation instructions](https://www.oracle.com/a/ocom/docs/database/oracle-client-for-microsoft-tools-install-instructions.pdf)
- [Microsoft documentation regarding the usage of Oracle data sources in Power BI](https://learn.microsoft.com/en-us/power-bi/connect-data/service-gateway-onprem-manage-oracle)

---

## Microsoft Access Database Engine 2016 Redistributable (64-bit)

### Gateway Connection Types

- File
  - Excel (when using legacy drivers)
  - Text/CSV (when using legacy drivers)
  - Access Databases

### Installation

1. Download the 64-bit installer from the [Microsoft Download Center](https://www.microsoft.com/en-us/download/details.aspx?id=54920).
2. Ensure the gateway server is ready for maintenance by following steps 1-2 of the ["Update and Reboot Process"](patching-clustered-gateways.md#update-and-reboot-process).
3. Launch the downloaded executable to run the installer.
4. Use the default settings.
5. Restart the Power BI Gateway service.
6. Test by creating a sample connection in Power BI Gateway.

### Upgrades & Patching

- Follow the same procedure as the installation.

### Notes & Reference
- Only one version (32-bit or 64-bit) can be installed at a time.
- [Power Query Access database documentation](https://learn.microsoft.com/en-us/power-query/connectors/access-database)

---

