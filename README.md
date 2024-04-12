
CUGCSthesis_EN: LaTeX template for English dissertations in China University of Geosciences.

This template is based on the ThuThesis latex template, CUGThesis template and the standard for writing English bachelor's degree thesis of China University of Geosciences (Wuhan). It is mainly used for the English bachelor's degree thesis of the School of Computer Science, CUG.


## 1. TeX Live download and installation


Go to the ISO download page, click download from a nearby CTAN mirror to download;

[Dowload](https://tug.org/texlive/acquire-iso.html)

After the download is complete, unzip the file, and find the "install-tl-windows" file. For unnecessary trouble later, you can right click and run as administrator. We use vscode as the editor for LaTeX, so uncheck the option to install the TeXworks front end and click Install.



## 2. LateX environment configuration

VScode is recommended for editing LaTeX. [Vscode download](https://code.visualstudio.com/)


After installing vscode, you need to install LaTeX Workshop, a support plugin for LaTeX.

- Click the extension icon to open the extension;
- Enter "LaTeX Workshop" and select the first LaTeX Workshop plug-in;
- Click "install"

Open the LaTeX environment Settings page.

- Click on the Settings icon.
- Open the `setting.json` file.
- Add the configuration code to it. The LaTeX configuration code is as follows


```
{
    "latex-workshop.latex.autoBuild.run": "never",
    "latex-workshop.showContextMenu": true,
    "latex-workshop.intellisense.package.enabled": true,
    "latex-workshop.message.error.show": false,
    "latex-workshop.message.warning.show": false,
    "latex-workshop.latex.tools": [
        {
            "name": "xelatex",
            "command": "xelatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "%DOCFILE%"
            ]
        },
        {
            "name": "pdflatex",
            "command": "pdflatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "%DOCFILE%"
            ]
        },
        {
            "name": "latexmk",
            "command": "latexmk",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-pdf",
                "-outdir=%OUTDIR%",
                "%DOCFILE%"
            ]
        },
        {
            "name": "bibtex",
            "command": "bibtex",
            "args": [
                "%DOCFILE%"
            ]
        }
    ],
    "latex-workshop.latex.recipes": [
        {
            "name": "XeLaTeX",
            "tools": [
                "xelatex"
            ]
        },
        {
            "name": "PDFLaTeX",
            "tools": [
                "pdflatex"
            ]
        },
        {
            "name": "BibTeX",
            "tools": [
                "bibtex"
            ]
        },
        {
            "name": "LaTeXmk",
            "tools": [
                "latexmk"
            ]
        },
        {
            "name": "xelatex -> bibtex -> xelatex*2",
            "tools": [
                "xelatex",
                "bibtex",
                "xelatex",
                "xelatex"
            ]
        },
        {
            "name": "pdflatex -> bibtex -> pdflatex*2",
            "tools": [
                "pdflatex",
                "bibtex",
                "pdflatex",
                "pdflatex"
            ]
        },
    ],
    "latex-workshop.latex.clean.fileTypes": [
        "*.aux",
        "*.bbl",
        "*.blg",
        "*.idx",
        "*.ind",
        "*.lof",
        "*.lot",
        "*.out",
        "*.toc",
        "*.acn",
        "*.acr",
        "*.alg",
        "*.glg",
        "*.glo",
        "*.gls",
        "*.ist",
        "*.fls",
        "*.log",
        "*.fdb_latexmk"
    ],
    "latex-workshop.latex.autoClean.run": "onFailed",
    "latex-workshop.latex.recipe.default": "lastUsed",
    "latex-workshop.view.pdf.internal.synctex.keybinding": "double-click"
}
```


## 3. Download the template

- Template instructions (`Thesis.pdf`)

Before you start writing, it is recommended to copy or rename `CUGThesis.pdf` to some other meaningful name.

On-line editing:
- [overleaf template]()