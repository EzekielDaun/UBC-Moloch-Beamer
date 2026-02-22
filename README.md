# UBC-Moloch-Beamer

> **Project note:** This project was built almost entirely through Codex vibe coding.

A UBC-flavored Beamer template built on top of the moloch theme, suitable for thesis defense and academic presentations.

The repository includes two relatively comprehensive demo decks: `demo_light.tex` and `demo_dark.tex`.

## What is included

- `ubc-moloch-beamer.sty`: UBC-specific style layer on top of moloch.
- `main.tex`: minimal user-facing entry template.
- `demo_light.tex` and `demo_dark.tex`: relatively comprehensive demo decks.
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

## Development commands

```bash
make all      # build main, style-matrix, and both demos
make matrix   # build style matrix only
make clean    # remove intermediate files
```

## Project structure

- `main.tex`: minimal starter deck
- `demo_light.tex` and `demo_dark.tex`: relatively comprehensive demo decks
- `style-matrix.tex`: style regression deck (light/dark x frame type x crest)
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
