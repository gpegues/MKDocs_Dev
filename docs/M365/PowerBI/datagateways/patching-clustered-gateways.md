## Patching and Rebooting Clustered Power BI Gateway Servers

### Purpose
Ensure Windows OS updates and reboots are applied safely to servers running clustered Power BI Gateways without disrupting Power BI service availability.

Official Whitepaper:
[Service Gateway Update](https://learn.microsoft.com/en-us/data-integration/gateway/service-gateway-update)

---

## Pre-Check

1. **Log into the Power BI Service Portal**:
   -  [https://app.powerbi.com/](https://app.powerbigov.us/)
2. **Navigate to**: **Manage Gateways and Connections** → **On-Premises Data Gateways** → **Open Gateway Cluster Details (e.g., RIVCO-OnPremDataGateway)**.
3. **Verify all nodes are showing as "Online" and "Enabled"**.
   - "Online" = Gateway is connected and reachable.
   - "Enabled" = Gateway is active and available for load balancing.
4. If any nodes other than the one being brought down for maintenance are unhealthy or disabled unexpectedly, **resolve issues before proceeding**.
   - You will need _**"Tenant Administration"**_ enabled in Power BI Admin Portal to manage these settings.
   - You can find gateway logs on the hosting servers to review for errors in the **Windows OS Event Log** under:
     -  "**Applications and Services Logs** > **On-premises sata gateway service**"

---

## Update and Reboot Process

> **Important:** Only process one node at a time.

### Step 1: Select and Disable the Node
- In the Power BI Service Portal:
  - Navigate to the gateway cluster details.
  - Find the server you plan to patch.
  - **Set the node to "Disabled"**.
    - You will need _**"Tenant Administration"**_ enabled in Power BI Admin Portal to manage these settings.
- This will gracefully remove it from the load balancer and allow running jobs to complete.

### Step 2: Wait for Active Jobs to Finish
- Wait approximately **30 minutes** after disabling the node to ensure active tasks are completed.
- (Adjust longer if large or critical jobs are running.)

### Step 3: Apply Windows/PBI Gateway Updates
- Apply the necessary Windows Server OS patches to the selected server and/or PBI Gateway Update.

### Step 4: Reboot the Server
- Perform a reboot.

### Step 5: Verify Node Reconnection
- After reboot, sign back into the Power BI Service Portal.
- Confirm:
  - The node status is **"Online"** (Connected to Power BI Service).
  - It shows **"Disabled"** (still not load-balanced yet).
> **Note:** This step is separated from re-enabling the node to ensure the server has fully restarted, the gateway service is healthy, and no issues are present before returning it to load-balanced traffic. This helps prevent service disruptions from unstable or misconfigured nodes.

### Step 6: Re-Enable the Node
- After confirming the node is online and stable, **set the node back to "Enabled"** in the cluster settings.
- This returns it to the active load balancer pool.

### Step 7: Repeat for Remaining Nodes
- Move to the next node and repeat Steps 1–6 until all nodes are updated and rebooted.

---

## Post-Update Validation

1. **Verify Gateway Cluster Health**
   - Confirm all nodes are showing **"Online"** and **"Enabled"**.
2. **Monitor Dataset Refreshes**
   - Check scheduled and manual refresh jobs to ensure no failures. (This section needs to be updated with some information on how we can accomplish this, work in progress)
3. **Review Gateway Logs (if needed)**
   - At the the of this writing, logging outside of OS logging is not enabled and is not recommended to be left on outside of troubleshooting. If you need to enable this for any reason, please refer to the following document:
     - [Enable Data Gateway Logging](https://learn.microsoft.com/en-us/data-integration/gateway/service-gateway-performance#slow-performing-queries)

---

## Additional Notes

- **Cluster Redundancy:** Gateway clusters automatically handle node outages, but disabling the node ensures no new jobs are sent there during patching.
- **Custom Connectors:** If using custom connectors, validate that they function correctly after updates.  (This section needs to be updated with some information on how we can accomplish this, work in progress)
- **Service Accounts:** Confirm no recent password changes for the gateway service account to avoid authentication issues after reboot.
- **Version Consistency:** Ensure all nodes are on the same gateway version after patching.

---

## Quick Checklist

- [ ] Verify all nodes are healthy and enabled before starting.
- [ ] Disable the selected node before patching.
- [ ] Wait ~30 minutes for active tasks to complete.
- [ ] Apply updates and reboot the node.
- [ ] Verify the node returns online after reboot.
- [ ] Re-enable the node after verification.
- [ ] Repeat for the next node.
- [ ] Validate cluster health and dataset refresh success after all updates.
