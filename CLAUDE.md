# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

Personal academic site for Daniel Scholz (https://daniel-scholz.github.io). It's built with Jekyll and the Minimal Mistakes theme gem, and its layout follows https://vikiehm.github.io: a profile sidebar, an About page with News, a Publications list and a short CV page.

## Commands

The system Ruby (2.6) is too old, so use Homebrew Ruby. Gems install into `vendor/bundle` (gitignored).

```sh
export PATH=/opt/homebrew/opt/ruby/bin:$PATH
bundle install
bundle exec jekyll serve      # http://localhost:4000, rebuilds on change (except _config.yml)
bundle exec jekyll build      # into _site/
```

There are no tests. To check a change, build and look at the rendered page (for example, with a Playwright screenshot). The many Sass "slash-div" deprecation warnings come from the theme and are harmless.

## Deployment

A push to `main` runs `.github/workflows/publish.yaml`, which builds with Ruby 3.3 and deploys to GitHub Pages. `Gemfile.lock` must include the `x86_64-linux` platform for CI (`bundle lock --add-platform x86_64-linux`).

## Structure

- The theme comes from the `minimal-mistakes-jekyll` gem, not vendored. To override a theme file, copy it from `bundle info --path minimal-mistakes-jekyll` to the same path here.
- `_config.yml` holds the sidebar profile (`author:` bio, avatar and social links) and sets the `single` layout with the sidebar as the default for every page.
- Content is data-driven:
  - `_data/news.yml` holds the dated News entries, newest first. `index.html` renders them and folds everything after the 7th under "Show more".
  - `_data/publications.yml` holds the paper list, newest first, with title, authors, venue, optional `image` and `award`, description, links and `bibtex`. `_pages/publications.html` renders it. The image file is `assets/images/publications/<image>`. "Daniel Scholz" is bolded automatically, and `*` after a name marks equal contribution.
  - `_pages/cv.md` is a short CV listing roles, dates and venues only.
- Custom CSS goes in `assets/css/main.scss`, after the theme imports. The look is the system sans font, a white page and one blue accent, with a dark-mode palette as CSS variables. `_includes/head/custom.html` adds the favicon, and `_includes/footer.html` is a copy of the theme footer with a shorter copyright line.
- `_plugins/lean_output.rb` keeps `_site` lean: it drops the theme's unused JS (pages load only `assets/js/main.min.js`) and the `feed.xml` that the theme's `jekyll-feed` dependency generates. `exclude:` can't remove theme-gem files. The Sass source map is off via `sass: sourcemap: never`.
- The pre-Jekyll Hugo Blox version of the site is commit `ac0bf65`.

## Content sources and limits

Facts come from Daniel's CV repo at `~/coding/cv/mine`, which is outside this repo:

- Citations come from `publications.bib`, `unselected_publications.bib` and `manuscripts_under_review.bib`.
- Paper PDFs for figures are `papers/scholz-*.pdf`.
- The headshot is `img/scholz_daniel.jpeg`.
- Talks and reviewing are in `cv/presentation.tex` and `cv/committees.tex`.

Before writing claims, read `~/coding/cv/docs/cv-facts-boundaries.md`, which sets wording limits (for example, "oral presentation at the MICCAI 2025 EMERGE workshop", never "Young Researcher Talk"). Daniel doesn't want the CV he sends to companies on this site: no CV PDF, phone number, grades, or application-tailored bullets.
