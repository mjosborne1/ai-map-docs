# Target Code Systems

## SNOMED CT

SNOMED CT is used as the primary reference terminology for clinical concepts,
diagnoses, procedures, and findings.

Concept identifiers are stable numeric SCTIDs. Example:

```text
26604007 | Complete blood count |
```

## LOINC

LOINC is used for lab tests and clinical observations where standardized naming
and interoperability are required.

Codes are alphanumeric. Example:

```text
2093-3  Cholesterol [Mass/volume] in Serum or Plasma
```

## General Mapping Guidance

- Prefer exact semantic equivalence where possible.
- Document assumptions when post-coordination or partial matches are used.
- Record provenance — mapper ID, review date, and source version — for each approved mapping decision.
- Assign the relationship type explicitly:

    | Relationship type | Meaning |
    | ----------------- | ------- |
    | Equivalent | Source and target have the same meaning. |
    | Broader | The target covers more than the source term (e.g. local code "fasting glucose" mapped to LOINC "Glucose [Moles/volume] in Blood"). |
    | Narrower | The target is more specific than the source term (e.g. local code "chest pain" mapped to SNOMED CT "Pleuritic chest pain"). |
    | No map | No meaningful relationship exists between source and target. |
