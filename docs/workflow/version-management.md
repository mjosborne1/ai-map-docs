# Version Management & Review

## Audit history

Every change in AI-Map is logged. Click **History** in the toolbar to see the full audit trail for the project, including mapping edits, version status changes, and member additions.

![Project history](../images/workflow/22-ViewMapHistory.png)

*The History panel records every action: who made it, when, what entity was changed, and the before/after values. Use the **Mappings**, **Versions**, and **Members** tabs to filter.*

---

## Adding a reviewer

Before submitting a version for review, add the reviewer as a project member. Click **Members** in the toolbar.

![Members button in toolbar](../images/workflow/23-AddingAReviewer.png)

*Click the **Members** button to open the Project Members panel.*

Search for the reviewer by name or email address, confirm the **Reviewer** role is selected, and click **Add**.

![Add member dialog](../images/workflow/24-AddingAReviewer2.jpg)

*Search by at least 3 characters of the reviewer's name or email. Select **Reviewer** from the role dropdown before clicking **Add**.*

The reviewer now appears in the members list and has access to the project.

![Reviewer added](../images/workflow/25-AddingAReviewer3.jpg)

*The reviewer is listed with the REVIEWER badge. They can now view the project and mark versions as reviewed.*

---

## Submitting a version for review

Click **Versions** in the toolbar to open the Map Versions panel. This lists all versions of the mapping with their current status.

![Map Versions panel — draft](../images/workflow/26-VersionManagement1.png)

*The Versions panel shows the version label, status, dates, and available actions.*

Click **Submit for Review** on the active draft version.

![Submit for Review button](../images/workflow/27-SubmitVersionForReview.png)

*Version `v1 — Initial version` in DRAFT status. Click **Submit for Review** to send it to the reviewer.*

Confirm the submission.

![Submit confirmation](../images/workflow/28-SubmitVersionReviewConfirmation.png)

*Click **OK** to confirm. The version status changes immediately.*

The version status changes to **Submitted** and the reviewer can now mark it reviewed or send it back.

![Version submitted](../images/workflow/29-ReviewStatusSubmitted.png)

*The version is now SUBMITTED. The reviewer sees **Mark Reviewed** and **Send Back** options.*

---

## Bulk actions during review

Reviewers can select multiple rows and apply a relationship type or mapped status to all of them at once using the bulk action toolbar that appears at the bottom of the table.

![Bulk action toolbar](../images/workflow/30-BulkAction.png)

*Select rows using the checkboxes, then use the bulk action toolbar to set the relationship or status across all selected mappings simultaneously.*

---

## Marking as reviewed and finalising

Once the reviewer is satisfied, they click **Mark Reviewed**. The version status moves to **Reviewed**.

![Version reviewed](../images/workflow/31-ReviewComplete.png)

*The version is REVIEWED. The project owner now sees the **Finalise** button.*

The project owner clicks **Finalise** to lock the version.

![Finalise confirmation](../images/workflow/32-FinaliseVersion.png)

*A confirmation dialog appears before finalising. A finalised version cannot be edited.*

The version status becomes **Final** — it is now read-only and ready for export.

![Final status](../images/workflow/33-FinalStatus.png)

*Version `v1` is FINAL and marked Active. No further changes can be made to this version.*

The full lifecycle is visible in the History panel.

![History showing full lifecycle](../images/workflow/34-HistoryShowingReviewedFinal.png)

*The Versions tab in History shows the complete status progression: SUBMITTED → REVIEWED → FINAL, with the user and timestamp for each transition.*
