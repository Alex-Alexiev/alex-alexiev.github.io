# Curriculum vitae

The CV source is split by page for easier editing:

- `page-1.tex` contains the first page.
- `page-2.tex` contains the second page.
- `Alexander_Alexiev_CV.tex` contains shared formatting and assembles both pages.

It uses XeLaTeX-compatible packages and Liberation Sans, the installed metric-compatible substitute for Arial. From this directory, compile the main file with Tectonic:

```sh
tectonic Alexander_Alexiev_CV.tex
```

The website links to the compiled PDF at `../output/pdf/Alexander_Alexiev_CV.pdf`.

## Automatic rebuilds in VS Code

The workspace recommends the LaTeX Workshop extension and configures it to rebuild the CV whenever `Alexander_Alexiev_CV.tex`, `page-1.tex`, or `page-2.tex` is saved. The output is written directly to `../output/pdf/Alexander_Alexiev_CV.pdf`.

You can also run the same build manually from the repository root:

```sh
./scripts/build-cv.sh
```
