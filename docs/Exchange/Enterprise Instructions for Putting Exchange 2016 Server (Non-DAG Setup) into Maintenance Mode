## Enterprise Instructions for Putting Exchange 2016 Server (Non-DAG Setup) into Maintenance Mode:

### **1. Preparation:**

- **Communicate Maintenance Window**: 
  - Notify your users and other stakeholders about the upcoming maintenance (Change Control).
  - Define the maintenance window, expected downtime, and potential service interruptions.

- **Backup**: 
  - Ensure you've taken a full backup of your Exchange server and verify its integrity.

- **Environment Check**: 
  - Check the overall health of the Exchange environment using the Exchange Management Shell:
    ```powershell
    Test-ServiceHealth
    ```
  - Ensure all services are running and are healthy before starting.

### **2. Redirect User Connections:**

- **Redirect OWA, ActiveSync, etc**: 
  - If you're using a load balancer, remove this server from the rotation.
  - Otherwise, adjust the connection weight:
    ```powershell
    Set-ServerComponentState <ServerName> -Component HubTransport -State Draining -Requester Maintenance
    ```

- **Wait for Connections to Drain**: 
  ```powershell
  Get-Queue
  ```

### **3. Stop Required Services:**

- **Stop the Services**: 
  ```powershell
  Set-ServerComponentState <ServerName> -Component ServerWideOffline -State Inactive -Requester Maintenance
  ```

### **4. Perform Maintenance Activities:**

- Perform any updates, repairs, or other required tasks.

### **5. Bringing the Server Back Online:**

- **Start Services**: 
  ```powershell
  Set-ServerComponentState <ServerName> -Component ServerWideOffline -State Active -Requester Maintenance
  ```

- **Enable Hub Transport State**: 
  ```powershell
  Set-ServerComponentState <ServerName> -Component HubTransport -State Active -Requester Maintenance
  ```

- **Verify Health**: 
  ```powershell
  Test-ServiceHealth
  ```
- **Test SMTP Relay Services**:
  ```powershell
  Test-SMTPConnectivity
  ```

### **6. Communication:**

- Communicate to users and stakeholders that the maintenance is over and services have been restored (Change Control).

---

**NOTE**: Always have backups and recovery plans in place before starting maintenance on any critical system. Always review any additional requirements for any updates to be installed
