# Reviewing Mappings

## The mapping table

After automap, the table shows every source code alongside its proposed target. Codes are colour-coded by relationship type: **Inexact** (orange), **Equivalent** (green), **Broader** (blue), **Narrower** (teal), **No Map** (red). Unmapped codes have no target.

Use the filter tabs to work through one relationship type at a time, or use the keyboard shortcuts shown in the toolbar to navigate and set relationships without opening the edit panel.

![Mapping table after automap](../images/workflow/15-EditMappingfromTable.png)

*The table after automap. `WBC` and `RBC` have no target yet; `HEB` has been matched to LOINC `718-7` (Haemoglobin) at 85% confidence. Click the **Edit** button or press `e` to open the edit panel.*

---

## Editing a mapping

The **Edit Mapping** panel shows the source columns for context and a live search against the target code system.

![Edit Mapping — search](../images/workflow/16-EditMappingTarget.png)

*Source columns (Specimen Type, Units, Panel Code, Panel Name) are shown for reference. Type in the search box to find candidates. Results are split into **Context Search** (within the FHIR binding) and **Broader ValueSet** (wider search). Use **Copy description** to pre-fill the search with the source description.*

Select a candidate to load its concept details.

![Edit Mapping — set relationship](../images/workflow/17-SetMapTargetRelationship.png)

*Once a target is selected, the concept properties (parent, active status, designations, synonyms) are displayed. Choose the relationship type — **Equivalent**, **Broader**, **Narrower**, **Inexact**, or **No Map** — then set Map Status to **Mapped**.*

The **Concept Properties** panel shows the fully specified name, display name, and synonyms to help confirm the match is semantically correct.

![Concept properties](../images/workflow/18-ConceptProperties.png)

*Concept properties for the selected target. Review the fully specified name and synonyms to confirm the concept matches your source term's intent.*

Add a note to record your reasoning, then click **Save**.

![Add note and save](../images/workflow/19-AddNoteThenSave.png)

*Use the Notes field to record why this target was chosen (e.g. which reference or guideline was consulted). Check **Flag for manual review** if the mapping needs a second opinion.*

---

## Completed mappings

Work through all codes until the **Unmapped** count reaches zero.

![Completed mapping table](../images/workflow/20-CompletedMap.png)

*All 45 codes mapped. The status bar shows the breakdown by relationship type.*

---

## Validating target codes

Click **Validate** to check every mapped target code against the terminology server. This confirms that no target concept has been retired or made inactive since it was mapped.

![Validate button](../images/workflow/21-Validation.png)

*Validate checks for inactive or deprecated target concepts. Run this before submitting a version for review.*
