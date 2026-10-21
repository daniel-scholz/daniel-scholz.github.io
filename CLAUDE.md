# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

Personal academic site for Daniel Scholz (https://daniel-scholz.github.io), built on the Hugo Blox "Academic CV" starter. The upstream `README.md` is the unchanged template README and says nothing specific to this site.

## Commands

The theme needs Hugo **0.136.5 extended**. Homebrew's `hugo` is far newer and breaks the theme, so use the pinned binary in `.hugobin/` (gitignored, local only):

```sh
.hugobin/hugo server                                    # live preview at http://localhost:1313
.hugobin/hugo --minify                                  # production build into public/
.hugobin/hugo --minify && npx pagefind --site public    # build plus the search index, as CI does
```

There are no tests or linters. To check a change, build without errors and look at the rendered page (for example, take a headless Chrome or Playwright screenshot of `hugo server`).

## Deployment

A push to `main` runs `.github/workflows/publish.yaml`. It builds with Hugo 0.136.5, runs Pagefind and deploys to GitHub Pages. `netlify.toml` and `updater-wip.yml` come from the template and aren't used for this site. `import-publications.yml` runs only when a root-level `publications.bib` changes, and none exists right now.

## Architecture

- **Theme via Hugo modules, not vendored.** `go.mod` and `config/_default/module.yaml` import `blox-tailwind` and `blox-plugin-netlify` from `github.com/HugoBlox/hugo-blox-builder`. Theme templates live in the module cache. To override one, put a file at the same path under `layouts/` (for example, `layouts/partials/hooks/head-end/` injects into `<head>`).
- **The homepage is one landing page.** `content/_index.md` (`type: landing`) lists its `sections`: a `resume-biography-3` bio block (it reads `content/authors/admin/`), a `collection` of `content/publication/`, and a `collection` of `post` pages that renders as "News". The anchors in `config/_default/menus.yaml` (`/#papers`, `/#news`) must match the section `id`s.
- **Content types:**
  - `content/authors/admin/_index.md` holds the bio, social links and interests, with `avatar.jpg` as the headshot. Publications credit Daniel by listing `admin` as an author.
  - `content/publication/<slug>/` contains `index.md` (front matter: authors, date, doi, `publication_types`, abstract, summary, `url_pdf`/`url_code`, `featured`), `cite.bib`, and a `featured.png` teaser figure.
  - `content/post/<slug>/index.md` holds short news items tagged `News`.
- **Site config** is in `config/_default/`: `hugo.yaml` (baseURL, title), `params.yaml` (appearance, header and footer, features), `menus.yaml` and `languages.yaml`.
- Custom icons go in `assets/media/icons/brands/` (the theme ships no Bluesky icon, so `bluesky.svg` was added). The CV PDF linked from the site is `static/uploads/resume.pdf`.

## Content sources

The site content is copied from Daniel's CV repo at `~/coding/cv/mine`, which is outside this repo:

- Citations come from `publications.bib`.
- Teaser figures and abstracts come from `papers/scholz-*.pdf`.
- The headshot is `img/scholz_daniel.jpeg`.
- Social handles are in `personal_info.tex`.

When you add or update a paper, take its metadata from there instead of retyping it.
