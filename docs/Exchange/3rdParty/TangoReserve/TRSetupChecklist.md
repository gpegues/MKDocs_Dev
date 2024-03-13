## Task List for Reserve + Exchange Integration Setup

### 1. Integration Compatibility Check
- [ ] Ensure compatibility with Microsoft Office 365 (cloud-based) for the Reserve + Exchange integration.

### 2. Azure AD Information Gathering
- [ ] Obtain and provide the following Azure AD details to AgilQuest (AQ):
  - Tenant ID (for the Exchange Authority URL)
  - Client ID (encoded as `Exchange.client.id`)
  - Client Secret Value (encoded as `Exchange.client.secret`)

> **Note**: See the referenced article for guidance on extracting these details from Azure AD.

### 3. Exchange Configuration
- [ ] In Exchange:
  - [ ] Create a dedicated user for the Exchange Connector. 
  - [ ] Generate and provide the Exchange URL and Autodiscover URL to AgilQuest.
  - [ ] Ensure resource rooms can be reserved and are set to "auto-accept."
  - [ ] Grant the ExchangeConnector user FullAccess to the Room Resource.
  - [ ] Use the primary SMTP email for room bookings; email aliases are not accepted.

### 4. Reserve Setup
- [ ] In Reserve:
  - [ ] Create a user named “Exchange User” for Exchange integration. Mark this user as "private."
  - [ ] Assign the “Exchange User” with rights to create and manage reservations for another user. 
  - [ ] Place the Exchange user in a user group with access to the required asset group.

### 5. Final Steps
- [ ] AgilQuest will host your Reserve Exchange Connector.
- [ ] Use the email of the Exchange Connector user created in Exchange to set up the user in Reserve.
