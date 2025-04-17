# Power BI "Publish to Web" Guidelines for Government M365 Tenants

## Overview
This document outlines technical and compliance-based recommendations for using the **"Publish to Web"** feature in **Power BI** within a **government Microsoft 365 (M365) tenant**. The goal is to ensure data transparency while adhering to strict privacy, security, and regulatory standards.

## Why It Matters
The "Publish to Web" feature makes a Power BI report **publicly accessible without authentication**. For government entities, this has serious implications for:
- Data privacy and confidentiality
- Regulatory compliance
- Public trust and transparency

---

## Security & Compliance Recommendations

### 1. **Limit Use to Public-Facing Content Only**
Use this feature **only for dashboards explicitly approved for public release**, some examples might be:
- Budget summaries
- Public meeting schedules
- Open data or transparency portals

### 2. **Never Include Regulated or Sensitive Data**
Do not use "Publish to Web" with data protected under the following:

| Acronym | Full Form | Protects | Applies To |
|---------|-----------|----------|-------------|
| **PII** | Personally Identifiable Information | Identifiable personal details (e.g., SSNs, names, emails) | All organizations, especially public sector |
| **PHI** | Protected Health Information | Medical and health-related data | Healthcare orgs under HIPAA |
| **CJIS** | Criminal Justice Information Services | Criminal justice and law enforcement records | Justice/law enforcement agencies |
| **FISMA** | Federal Information Security Management Act | Federal systems and sensitive information | Federal agencies and contractors |
| **FERPA** | Family Educational Rights and Privacy Act | Student records and education data | Schools and educational institutions |
| **HIPAA** | Health Insurance Portability and Accountability Act | Health data used in care, billing, etc. | Covered healthcare entities and associates |

### 3. **Controlled Access via Security Group**
- The "Publish to Web" feature is **disabled for all users by default** in the Power BI Admin Portal.
- Access is granted **only through membership in the `RBAC_PowerBI_AllowPublishToWeb` security group**.
- **Managerial approval is required** before a user is added to this group.

### 4. **Provide Clear Public Disclaimers**
Every publicly shared report should include a disclaimer:
> “This dashboard is provided for informational purposes. No sensitive or confidential data is contained.”

Including a disclaimer is considered a best practice for public-facing dashboards. It sets clear expectations for data use, protects your agency from liability, and supports transparency. While not explicitly required by Microsoft, it is strongly encouraged for open data and transparency initiatives.

- Microsoft: [Publish to web in Power BI - Considerations and limitations](https://learn.microsoft.com/en-us/power-bi/collaborate-share/service-publish-to-web#considerations-and-limitations)

### 5. **Ensure Accessibility & Branding Compliance**
Ensuring accessibility and branding compliance means making sure your dashboards are inclusive, recognizable, and trustworthy for the public.

#### Accessibility (Section 508 and WCAG)
- **Section 508** is a U.S. federal law that mandates accessibility for digital content, ensuring people with disabilities can use your reports.
- **WCAG** (Web Content Accessibility Guidelines) are internationally recognized standards for creating accessible web content.

Key practices include:
- High-contrast visuals
- Keyboard navigation support
- Proper labeling of visuals and content
- Screen reader compatibility

Resources:
- [Section 508 Guidelines](https://www.section508.gov/manage/laws-and-policies/)
- [WCAG Overview](https://www.w3.org/WAI/standards-guidelines/wcag/)

---

## Technical Best Practices

The following table outlines technical best practices that should be followed when using Power BI's "Publish to Web" feature. These recommendations aim to ensure usability, minimize risks, and enhance clarity for public users.

| **Best Practice** | **Recommendation** | **Explanation** |
|-------------------|---------------------|------------------|
| **Data Source Types** | Avoid DirectQuery, Live Connections, or RLS-based models | These methods involve dynamic data or access controls that are not compatible with public publishing. **DirectQuery**: Queries the data source in real time, exposing live internal data. **Live Connections**: Used with services like Analysis Services, and relies on active backend models. **RLS (Row-Level Security)**: Restricts what data users can see based on identity. However, RLS is **not enforced** with Publish to Web, meaning all data becomes visible to anyone. For public reports, always use static, pre-aggregated data sources. |
| **Embed Responsibly** | Use iframe embedding on trusted domains only | Iframe embedding allows you to place Power BI reports into external websites. By restricting this to trusted domains (e.g., official .gov or agency-owned domains), you prevent malicious sites from displaying or misusing your public dashboards. This limits the risk of data scraping, impersonation, or unapproved framing of your content. |
| **Optimize Report Performance** | Limit visuals and avoid heavy queries | Simpler reports load faster for public users. Avoid too many visuals, slicers, or large datasets, as performance issues impact accessibility and user experience. |
| **Test Before Publishing** | Review layout and data visibility in incognito/private mode | Before publishing, validate what external users will see. This includes checking formatting, responsiveness, and confirming no sensitive data is inadvertently shown. |
| **Use Descriptive Titles and Tooltips** | Clearly label visuals and include hover-over explanations | Well-labeled charts and visuals help the public understand the data without needing context from internal teams. Use tooltips for added clarity on numbers or categories. |
