# Exporting

Once a version is finalised, click the **Export** button in the project toolbar and select a format.

![Export format options](../images/workflow/43-ExportOptions.png)

| Format | Use case |
| ------ | -------- |
| **Excel (.xlsx)** | Human-readable review, loading into LIS/EMR import tools. |
| **FHIR ConceptMap (.json)** | Uploading to a FHIR server or terminology service. |
| **CSV (.csv)** | Integration with data pipelines and scripts. |
| **TSV (.tsv)** | Tab-separated variant of CSV for tools that prefer it. |

A system save dialog opens. Choose a destination folder and confirm the filename.

![Save dialog](../images/workflow/44-SelectFilepath.png)

*The default filename includes the project name. Choose your export folder and click **Save**.*

The exported file appears in the chosen location.

![Exported file in Finder](../images/workflow/45-ExportedFile.png)

*The `.xlsx` export alongside other mapping files. The filename reflects the project name and export date.*

## Export file contents

The Excel export contains one row per source code with all mapping metadata.

![Excel export](../images/workflow/46-ExcelViewofV2Map.png)

*Key columns in the export: Source Code, Description, additional source columns (Specimen Type, Units, etc.), Map Status, Target Code, System, Display, Confidence score, Match Quality, AI Reasoning, Author, Reviewed By, Flagged, and Active Target.*

This file is the primary handoff artefact for loading mappings into a LIS or EMR.

## Publishing the FHIR ConceptMap

AI-Map does not push the ConceptMap to a FHIR server itself — the FHIR ConceptMap export is a file download only. To publish it to a terminology or FHIR server, download the `.json` export and upload it separately (e.g. `POST`/`PUT` it to the server's `ConceptMap` endpoint using `curl`, Postman, or your terminology server's own import tooling).

For the export to contain complete `sourceUri`, `targetUri`, and `group.source` values, set the **Source ValueSet URL**, **Source Code System URL**, and **Target ValueSet URL** fields under **FHIR ConceptMap URLs** when creating or editing the project — see [Getting Started](getting-started.md#creating-a-project). Without these, the corresponding fields are omitted from the exported resource.
