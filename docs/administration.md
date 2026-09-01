# Administration

Administrative functions are available to users with the **Admin** role. Open the **User Administration** dialog from the toolbar to manage users and perform maintenance tasks.

Site-wide admin access (this page) is separate from the per-project **Owner / Author / Reviewer / Reader** roles described in [Project roles](workflow/version-management.md#project-roles) — an admin can manage any user account, but still needs a project role to work on a specific mapping project.

## Managing user accounts

The **User Administration** dialog lists every user who has logged into AI-Map, with their name, email, login provider, and last login time. Search by name or email to find a specific user.

For each user you can:

- **Disable / Enable** the account — a disabled user cannot log in.
- **Grant / Remove admin** — grants or revokes site-wide admin access.

You cannot disable your own account or remove your own admin access, to prevent accidentally locking yourself out.

## Clearing the concept cache

AI-Map caches terminology lookups (concept displays, properties, and value set membership) to speed up automap and the mapping table. If the underlying terminology server is updated — for example when a code system version changes or a concept is retired — the cache can hold stale results.

Click **Clear Concept Cache** in the User Administration dialog to purge all cached terminology lookups. Subsequent lookups are re-fetched fresh from the terminology server.

![Clear Concept Cache button in User Administration](images/workflow/51-AdminClearConceptCache.png)

*The **Clear Concept Cache** button in the User Administration dialog purges stale terminology lookups. Use it after a terminology server update, or if displays or value set membership appear out of date.*

Clearing the cache is safe: it does not affect any mappings, project data, or user accounts. The first few lookups after clearing may be slightly slower while the cache is repopulated.
