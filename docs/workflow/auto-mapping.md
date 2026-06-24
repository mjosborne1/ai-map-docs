# AI Auto-Mapping

## Running automap

With source terms loaded, click **Run Automap**. The AI will query the terminology server and propose a target concept for each unmapped code.

![Mapping table with Run Automap highlighted](../images/workflow/11-RunAutomap.png)

*The mapping table after source upload. Click **Run Automap** to start the AI matching process.*

A confirmation dialog shows how many codes will be processed. Click **OK** to proceed.

![Automap confirmation dialog](../images/workflow/12-AutomapConfirmation.png)

*All automap results are initially set to **Inexact** — every suggestion must be reviewed before being marked Mapped.*

A progress indicator shows processing in real time. You can click **Stop** at any point to halt the run; codes processed so far will retain their suggested mappings.

![Automap running](../images/workflow/13-Automap-running.png)

*Automap processing 25 of 41 codes. Results appear in the table as each code is matched.*

---

## Reviewing the automap log

When the run completes, an **Automap Log** summarises the results.

![Automap log](../images/workflow/14-PostAutomapLog.png)

*In this example: 41 codes attempted, 35 matched successfully (set to Inexact for review), 6 returned no match.*

**No match** entries show the exact query sent to the API. Common causes are highly abbreviated local codes (e.g. `WBC`, `RBC`) where the description alone is not enough context — these will need to be mapped manually. See [Troubleshooting](../appendix.md#troubleshooting) for API error codes.

Click **Close** to return to the mapping table and begin review.
