# UBC-Moloch-Beamer

> **Project note:** This project was built almost entirely through Codex vibe coding.

A UBC-flavored Beamer template built on top of the moloch theme, suitable for thesis defence and academic presentations.

The repository includes two relatively comprehensive demo decks, plus a short handout-layout demo: `demo_light.tex`, `demo_dark.tex`, and `demo_handout.tex`.

## Style API

The public API is intentionally small:

- `\UBCSetup{...}` sets deck-level defaults.
- `\UBCFrameSetup{...}` configures the next regular content frame and then auto-resets.
- `\UBCTitlePage[variant=light|dark]` emits the title page directly.

Current defaults:

- regular frames are light with the corner crest on
- section pages are dark with the corner crest off
- standout frames are dark with the corner crest off
- decks export pure slides by default, with notes hidden
- title, section, and standout pages do not count toward frame numbers by default
- `\titlegraphic` defaults to `\ubccrest` on `\UBCTitlePage` when unset

Supported keys:

- `\UBCSetup{normal variant=light|dark, section variant=light|dark, section crest=on|off, normal crest=on|off, notes mode=slides|speaker|handout, frame footnotes=off|local-symbols, title page numbering=none|hide|show, section page numbering=none|hide|show, standout numbering=none|hide|show}`
- `\UBCFrameSetup{variant=light|dark, crest=auto|on|off}`

Page numbering policy meanings:

- `none`: do not count the semantic page and do not show a page number
- `hide`: count the semantic page but hide its page number
- `show`: count the semantic page and show the currently selected Beamer page-number template

`UBC-Moloch-Beamer` does not define its own page-number style options. Pick the rendering you want through Beamer or moloch, for example:

```tex
\setbeamertemplate{page number in head/foot}[appendixframenumber]
```

If you do not select a page-number template yourself, the theme falls back to a minimal current-frame-number template for regular content slides.

Notes mode meanings:

- `slides`: export only the slide pages
- `speaker`: export slide plus right-side speaker notes using the frame `\note{...}` content
- `handout`: export slide plus a bottom ruled blank note area for printed markup; frame `\note{...}` content is hidden in this mode

## What is included

- `ubc-moloch-beamer.sty`: UBC-specific style layer on top of moloch.
- `main.tex`: minimal user-facing entry template.
- `demo_light.tex` and `demo_dark.tex`: relatively comprehensive demo decks.
- `demo_handout.tex`: short handout-mode demo for printed committee copies.
- `style-matrix.tex`: style behavior matrix used for regression checks.
- `references.bib`: bibliography database (moloch software citation + demo references).

## Requirements

- A LaTeX distribution (TeX Live or MacTeX recommended)
- `beamer`
- `bibtex`
- moloch Beamer theme (tested with v2.1.0) available in your TeX setup

## Quick start

Compile from the repository root:

```bash
make main
```

Or compile manually:

```bash
pdflatex -interaction=nonstopmode main.tex
bibtex main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```

Minimal usage:

```tex
\documentclass[aspectratio=169,11pt]{beamer}
\usepackage{ubc-moloch-beamer}
\setbeamertemplate{page number in head/foot}[appendixframenumber]

\UBCSetup{
  notes mode=slides,
  title page numbering=none,
  section page numbering=none,
  standout numbering=none
}

\title{My Talk}
\author{Your Name}
\institute{The University of British Columbia}
\date{\today}

\begin{document}
\UBCTitlePage[variant=light]

\begin{frame}
  \frametitle{Overview}
  Regular frames default to light with the crest on.
\end{frame}

\UBCFrameSetup{variant=dark, crest=off}
\begin{frame}
  \frametitle{Key Slide}
  This frame is dark and crest-free.
\end{frame}
\end{document}
```

## Development commands

```bash
make all      # build main, style-matrix, and all demos
make matrix   # build style matrix only
make demo_handout  # build the short handout demo
make clean    # remove intermediate files
```

## Project structure

- `main.tex`: minimal starter deck
- `demo_light.tex` and `demo_dark.tex`: relatively comprehensive demo decks
- `demo_handout.tex`: short handout-mode example deck
- `style-matrix.tex`: style regression deck for the public API
- `ubc-moloch-beamer.sty`: theme customization package
- `logo/`: crest assets used by the template
- `.github/workflows/latex.yml`: CI compile checks

## Citation

This repository cites moloch v2.1.0 as software in `references.bib`.

## License and asset notice

- Code and TeX sources are licensed under CC BY-SA 4.0 (`LICENSE`).
- UBC crest files in `logo/` were downloaded from UBC Brand: <https://brand.ubc.ca/>.
- UBC crest assets are third-party brand assets and are not relicensed by this repository.
- Crest usage remains subject to UBC brand and copyright terms.
- This template depends on moloch v2.1.0: <https://github.com/jolars/moloch>.
- moloch keeps its own upstream license and terms.

## Release metadata

- Version history: `CHANGELOG.md`
- Citation metadata: `CITATION.cff`
- Contribution guide: `CONTRIBUTING.md`
