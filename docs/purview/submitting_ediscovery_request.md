# Business Process: Submitting an eDiscovery Request to RCIT (Microsoft Purview)

## Purpose
To ensure accurate, efficient, and legally defensible use of Microsoft Purview eDiscovery, this process outlines the minimum information and formatting standards required before submitting a request to IT.

---

## 1. Request Submission Prerequisites
Before a request can be actioned by RCIT, the following information is required in relation to Microsoft Purvue eDiscovery:

### A. Custodian Information

- Full name of each custodian (internal or external)

#### 📌 Examples: Custodian Format

| **Type**            | **Example**                                                                                     | **Why**                                                                                   |
|---------------------|-------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| ✅ Acceptable        | `jane.smith@externalfirm.com`<br>`*@externalfirm.com`                                          | Email or domain provided for specific, verifiable targeting                               |
| ❌ Not Acceptable    | "Search for someone named Jane Smith from a company called External Firm"                      | No email or domain; not uniquely identifiable                                             |
| ❌ Not Acceptable    | "Search all email from External Firm"                                                          | No domain or verified addresses provided; cannot accurately scope                         |

> **Note**: Name-only submissions (e.g., "Search for John Smith") are not accepted. You must include a unique identifier — such as an email address or verified mail domain — especially for external individuals. Ambiguous or incomplete search requests increase risk, reduce accuracy, and violate data minimization practices.

- Primary email address or UPN (User Principal Name)

- Department affiliation  
  - Specify the **official department** name. We cannot accept requests scoped to informal sub-groups or teams within a department (e.g., "Budget Team B", "Planning Department", "Admin Division") because there is no authoritative way to verify internal membership.

### B. Group-Based Requests (Distribution Lists)

**Do not request use of user-managed distribution lists** or unofficial groups. These are often outdated, mismanaged, and contain inaccurate or obsolete entries. RCIT cannot validate their membership and will not correct or review group content for accuracy. If you want to target a group, you must provide a reviewed list of individual email addresses that has been verified for completeness and accuracy — free of typos, duplicates, or invalid entries.

#### 📌 Examples: Group-Based Requests

| **Type**            | **Example**                                              | **Why**                                                                                   |
|---------------------|----------------------------------------------------------|--------------------------------------------------------------------------------------------|
| ✅ Acceptable        | "Department of Social Services"<br>"DPSS"               | Official department name can be matched in Microsoft 365                                  |
| ❌ Not Acceptable    | "COVID-19 Response Team"<br>"Budget Approvers DL"       | Informal sub-groups or distribution lists are not traceable or validated                  |
| ❌ Not Acceptable    | "DPSS Administrative Division"<br>"TLMA Planning Team"  | Sub-divisions of departments are not individually tagged in Microsoft 365                 |
| ❌ Not Acceptable    | "Search all email from External Firm"                   | No domain or email pattern; too vague to scope properly                                   |

> RCIT cannot search within internal agency “sub-groups” because users are only tagged with their official departmental alias in Microsoft 365. For example, if a request asks for “all of Children’s Services within DPSS,” we cannot isolate only the Children’s Services Division (CSD). All users are categorized under the broader DPSS department, and there is currently no system-level tag or attribute that distinguishes CSD from other DPSS staff.

> This limitation stems from how the **Department** attribute functions in Microsoft 365 and the current capabilities of Microsoft Purview. Microsoft has indicated that support for dynamic group filtering in Purview for government tenants may be introduced in the coming months, which could help resolve this issue.

### C. Target Date Range

Specify:

- Start and end date (e.g., Jan 1, 2023 – March 15, 2024)
- If no range is provided, the system may return excessive, unfiltered results

### D. Search Criteria

You must provide actual, specific search terms or phrases. Do **not** describe a situation or ask RCIT to "look around" a scenario. Vague instructions like those below are **not acceptable** and will be rejected:

| **Not Acceptable Example** | **Why This Is a Problem** |
|----------------------------|-----------------------------|
| "Search for anything about what happened with the vendor in January" | Too vague; lacks specific keywords, vendor name, or identifiers. |
| "The original contract" | No document name, keyword, or metadata provided. |
| "Any contract renewal(s), extension(s), or amendment(s)" | Broad phrasing; needs contract names, parties involved, or identifiers. |
| "Any correspondence, notices of termination, or communications related to the contract status" | Lacks searchable terms; relies on IT to interpret intent. |
| "Any and all communications concerning project number 1-2-3-4, including, but not limited to, any and all communications concerning the planned weather drain and connection with Bridge Road going into Atlantis." | Overly broad; no focused keywords or logical operator use. |

Use logical operators (`AND`, `OR`, `NOT`), quotes for exact phrases where appropriate. **Doing so will significantly improve the accuracy of your search results and reduce the volume of irrelevant content. Well-structured queries result in less noise, less manual review work for your team or legal counsel, and lower the risk of unintentionally exposing sensitive data such as PII, HIPAA-protected information, or other regulated content due to over-discovery.**

#### 📌 Search Syntax Examples

| **Example**       | **Query**                                                                                          | **Explanation**                                                                                       |
|-------------------|-----------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|
| Phrase Match      | `"project falcon"`                                                                                 | Finds messages that contain the exact phrase "project falcon."                                        |
| Keyword Combo     | `"falcon prototype" AND "John Smith"`                                                              | Finds content only when both "falcon prototype" and "John Smith" appear in the same document.         |
| Exclude Matches   | `("data breach" OR "security incident") AND NOT "test environment"`                                | Finds mentions of incidents, excluding those related to test environments.                            |
| AND/OR Grouping   | `("contract" OR "agreement") AND "termination"`                                                    | Finds content mentioning either "contract" or "agreement" along with "termination."                   |
| Nested Logic      | `("complaint" OR "escalation") AND ("Jane Doe" OR "John Smith")`                                   | Finds any complaints or escalations involving either Jane Doe or John Smith.                          |
| Date Range        | `("policy violation" OR "code of conduct") AND received>=2024-01-01 AND received<=2024-06-30`       | Filters results to items received within a specific date range.                                       |

> If you are unsure how to write these queries, consult with Legal Counsel before submitting. RCIT will not interpret your request or provide guidance on search content — only on Microsoft Purview functionality or limitations.
