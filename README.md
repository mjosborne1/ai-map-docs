# ai-map-docs

User documentation for the AI-Map application, built with
[MkDocs](https://www.mkdocs.org/) and the
[Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) theme.

Published at <https://mjosborne1.github.io/ai-map-docs/>.

## Prerequisites

Python 3 with `pip`. Install the build dependencies:

```bash
make install          # pip install mkdocs-material
```

## Building locally

```bash
make serve            # live preview on http://127.0.0.1:8000 with auto-reload
make build            # render the static site into site/
make clean            # remove site/
```

Before publishing, build in strict mode so that broken internal links and
missing images fail the build instead of shipping silently:

```bash
mkdocs build --strict
```

`site/` is generated output and is git-ignored — never commit it, and never
edit it by hand.

## Publishing to GitHub Pages

Deployment is automatic. The **Deploy docs** workflow
(`.github/workflows/main.yml`) runs on every push to `main` — including a
merged pull request — and can also be started by hand from the **Actions** tab
(`workflow_dispatch`). It installs `mkdocs-material`, runs `mkdocs build`, and
uploads `site/` as a Pages artifact, which a second job deploys. The site is
live a minute or so after the run goes green.

So the whole publishing step is: merge to `main`, then watch the run.

```bash
gh run list --workflow "Deploy docs" --limit 3
gh run watch                     # follow the run in progress
```

If a run fails, the site keeps serving the last successful deploy — nothing is
torn down by a failed build. Fix the source, push again, and the next run
replaces it. The workflow builds with `mkdocs build --strict`, so a broken
internal link or a missing image fails the run and is never published — run
`mkdocs build --strict` locally to catch that before pushing.

Concurrent runs are serialised on a `pages` group and are *not* cancelled
in-progress, so two merges in quick succession deploy in order rather than
racing.

### One-time repository setup

Under **Settings → Pages**, the source must be **GitHub Actions** — it already
is for this repository, and the first workflow run deployed successfully. The
workflow publishes through the Pages artifact API rather than committing
rendered HTML, so nothing needs to be served from a branch.

### The old gh-pages branch

This repository previously deployed by running `mkdocs gh-deploy --clean`
locally, which force-pushed rendered HTML to a `gh-pages` branch. That branch
is no longer part of publishing. Do not run `gh-deploy` any more — with the
Pages source set to **GitHub Actions** it would not change the live site, and
it only adds confusing commits to a branch nobody reads.

## Docs source

Markdown source lives in `docs/`:

| Path | Contents |
| ---- | -------- |
| `docs/index.md` | Introduction / landing page |
| `docs/workflow/` | The mapping workflow, one page per stage |
| `docs/images/workflow/` | Numbered screenshots (`54-ReviewNote.png`, …) referenced by those pages |
| `docs/stylesheets/extra.css` | CSIRO palette overrides |

Site settings and the navigation tree are in `mkdocs.yml`. A new page is not
reachable until it is added to the `nav:` section there.
