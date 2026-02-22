# Contributing

## Before you open a PR

- Make focused changes with clear intent.
- Keep style and naming consistent with existing files.
- If you change visual behavior, include a short description of expected rendering.

## Local validation

Run from repository root:

```bash
make all
```

At minimum, confirm both compile successfully:

- `main.tex`
- `tests/style-matrix.tex`

## Pull request checklist

- Updated documentation when behavior changed.
- Added or adjusted test/example deck content when needed.
- Confirmed no unnecessary LaTeX build artifacts are committed.
- Confirmed asset/license constraints in `README.md` are still accurate.
