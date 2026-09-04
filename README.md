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

The site is served from the `gh-pages` branch of this repository. That branch
holds only rendered HTML and is managed entirely by MkDocs — do not edit or
merge into it manually.

To publish the current state of `main`:

```bash
mkdocs gh-deploy --clean
```

This builds the site and force-pushes the result to `gh-pages`, then GitHub
Pages serves it within a minute or so. Each deploy is recorded as a commit like
`Deployed <sha> with MkDocs version: 1.6.1`, so you can always tell which
source commit is currently live:

```bash
git log --oneline -1 origin/gh-pages
```

Deployment is a separate, manual step: pushing to `main` updates the Markdown
source but does **not** update the published site until `mkdocs gh-deploy` is
run. Commit and push your source changes to `main` first, so that the deployed
commit sha refers to something that exists on the remote.

### One-time repository setup

Under **Settings → Pages**, set the source to the `gh-pages` branch, `/ (root)`
directory. MkDocs writes the `.nojekyll` marker itself, so GitHub serves the
built output as-is rather than running it through Jekyll.

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
