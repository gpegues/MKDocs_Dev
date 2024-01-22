# RCIT Microsoft Teams Migration Plan Using Microsoft Intune

## Introduction

This document provides a detailed guide for IT Systems Administrators and Help Desk staff at RCIT for migrating from an older version of Microsoft Teams to the new version using Microsoft Intune.

## Objectives

- **Ensure a smooth transition** with minimal disruption to operations.
- **Maintain data integrity** throughout the migration process.
- **Facilitate user adaptation** to the new Teams environment.

## Pre-Migration Phase

### Assessment and Inventory (Week 1: January 22nd through January 26th)

- **Evaluate Customization Requirements**: Identify any specific configurations or customizations needed in the new Teams version.
- **Teams Client Versions**: Obtain endpoint version current adoption rates to determine further rollout strategy.

### User Communication and Training (Week 2: January 29th through Febuary 2nd)

- **Announce Migration Plan**: Inform RCIT staff about the migration timeline and what to expect.
- **Teams Warning Banner**: Starting on February 1 2024, any classic Teams users who haven’t updated to new Teams will begin seeing an informational banner to remind them about the timeline for the auto update. This banner will appear in the main Teams client window at the top of the page (underneath the main bar).
  - Note: This notification is enforced and displayed by Microsoft. It cannot be disabled.
- **Schedule Training Sessions**: Organize training for the new Microsoft Teams features.

## Migration Phase

### Initial Setup and Pilot Testing (Week 3: Febuary 5th through Febuary 9th)

- **Set up Intune for Teams Deployment**: Configure Microsoft Intune for opt in deployment of new Teams version.
- **Conduct Pilot Migration**: Migrate a small, controlled group using Intune and gather feedback.
- **Adjust Migration Strategy**: Make necessary adjustments based on pilot feedback.

### Optional Migration (Week 4-7: Febuary 12th through March 8th)

- **Intune**: Deploy "Opt-In" New Teams Version**: Use Microsoft Intune to deploy the new version of Teams to all users.
- **Noficiation**: Notification sent to BRM's and Agencies informing them of the required change and cut-off dates

### Forced Migration (Week 8: March 11th, 2024)

- **Intune**: Deploy Mandatory installation of New Teams Version to all users.
- **Teams Admin**: Enforce usage of new Teams via admin center 

## Post-Migration Phase

### Monitoring and Support (Week 8-10)

- **Continuous Monitoring**: Regularly check the new Teams environment for issues.
- **Provide Technical Support**: Offer assistance for users encountering problems.
- **Final Window for Update**: Final two weeks for any Classic Teams user to update, or any unsupported legacy features which are still needed by consumers to either gain support, or have business cases readdressed elsewhere.

### Review and Documentation Update - Enforced version compliance (March 31st, 2024)

- **Update IT Documentation**: Reflect changes in internal documentation.
- **Forced Update Compliance**: Microsoft as of this date will display a message stating that Classic Teams is no longer availible for use. Clients running this build will be required to update, and the application will attempt to uninstall and install the modern build.
- **Out of Date Clients**: Will need to install new update and remove old build. If not done automatically as the Teams client will make an automatic attempt to do this, this will need to be done with the assistance of the Help Desk.

## Conclusion

This plan aims for a structured transition to the new Microsoft Teams environment using Microsoft Intune, prioritizing minimal disruption and user adaptation. 
Conceptually this allows us to begin migration prior to March 2024, and allows us the ability to find resolutions for any classic to modern Teams client feature parity items prior to the March deadline for unexpected items.
