# DPS LaTeX Template

This repository holds the official DPS LaTeX template for theses.

It is recommended to use [VSCode](https://code.visualstudio.com/) with the [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension.
Alternatively you can build the document manually using the following command:

    latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf -shell-escape -outdir=out document.tex

Since [Minted](https://ctan.org/pkg/minted) is used for source code highlighting, the `python3-pygments` package needs to be installed in order to build the template.
However, Minted can also be removed with little effort.

Build and read the template for further information.

## Booklet

For booklet format, use the corresponding parameters for the `geometry` package in `document.tex`.
Build the PDF as usual and convert it to booklet with the following command:

    pdfbook2 -n out/document.pdf
