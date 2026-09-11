# Getting Started

## Logging in

Navigate to the AI-Map URL provided by your administrator. The login screen offers two options depending on your organisation.

![Login provider selection](../images/workflow/0-LoginProviderSelection.png)

*Choose **Sign in with Google** for non-CSIRO accounts, or **Sign in with Keycloak** for CSIRO accounts.*

Selecting Google opens the standard account chooser.

![Google account chooser](../images/workflow/1-GoogleLogin.png)

*Select the Google account you want to use.*

![Select account](../images/workflow/2-SelectAccount.jpg)

*Click your account to continue.*

Google will ask you to confirm access to azure.com. Click **Continue**.

![Google permission screen](../images/workflow/3-GoogleLoginContinued.jpg)

*Confirm that Google may share your name and email with the application.*

---

## Requesting access

Signing in for the first time creates an account, but does not by itself grant access.
A new account is held as **Pending** until an administrator approves it, and you will be
returned to the login page with:

> Your account has been created and is awaiting approval by an administrator.

An email is sent to the administrators at the same time, so there is nothing further you
need to do — sign in again once you have been told the account is active. If the request is
rejected, or the account is later disabled, signing in reports that the account is disabled
and you should contact an administrator.

<!-- TODO screenshot 58-AwaitingApproval.png — the login page showing the "Your account has
     been created and is awaiting approval by an administrator" banner. Needs a real pending
     registration to stage. -->

Some deployments also restrict which email domains may register at all. If your address is
outside the permitted domains, sign-in is refused outright with:

> That email address is not permitted to sign in to AI Map.

In that case sign in with your organisational account instead, or ask your administrator
which domains are accepted.

---

## Creating a project

After logging in you will see your project list. Click **+ New Project** to create your first mapping project.

![Home page — no projects yet](../images/workflow/4-CreateNewProject.png)

*The home page when no projects exist. Click **+ New Project** in the top-right corner.*

Fill in the project details and click **Create**.

![New Project dialog](../images/workflow/5-ProjectConfigBasic.png)

| Field | Description |
| ----- | ----------- |
| **Name** | A short identifier for the project (e.g. `OurLab Haematology Results`). |
| **Description** | A human-readable summary (e.g. `OurLab Haematology Results to LOINC`). |
| **FHIR Context** | The FHIR element the source codes will be bound to (e.g. `Pathology Result item`). Choose an existing context binding, or select **Add your own…** and supply a custom context URL. Use **⚙ Manage context bindings…** to view the presets offered here. The list is shared deployment configuration, so only an administrator can add, edit, or delete a binding — everyone else sees it read-only. |
| **Target Code System URL** | The code system you are mapping to. Select a preset or enter a custom URL (e.g. `http://loinc.org`). Overrides the code system URL returned by the AI during automap. |

Expand **▸ FHIR ConceptMap URLs** to set the `sourceUri`, `group.source`, and `targetUri` values that will populate the project's FHIR `ConceptMap` export (Source ValueSet URL, Source Code System URL, Target ValueSet URL). These are optional for day-to-day mapping, but without them the exported ConceptMap will be missing its source/target URIs — set them here if the mapping will be uploaded to a FHIR server or terminology service. The Target ValueSet URL is pre-filled from the context binding when one is available.

The project opens immediately, ready for source terms to be uploaded.
