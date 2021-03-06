# Usage

Clone this repo into `~/.pandoc/templates`.

```
cd ~/.pandoc
git clone https://github.com/ebsd/templates.git
```

# Custom notes template

Convert .md to .pdf :

```
pandoc note-template-pandoc-markdown.md -o note-template-pandoc-markdown.pdf --from markdown --template pandoc_custom_note --highlight-style breezedark
```

## yaml header for markdown file

Please read template file `pandoc_custom_note.latex`.

Or check `note-template-pandoc-markdown.md`.

# Eisvogel template

Is coming from https://github.com/Wandmalfarbe/pandoc-latex-template.

Convert .md to .pdf :

```
pandoc doc-template-pandoc-markdown.md -o doc-template-pandoc-markdown.pdf --from markdown --template eisvogel --toc --number-sections --highlight-style breezedark
```

## yaml header for markdown file

Check `doc-template-pandoc-markdown.md`.

# Modèle avec cartouche

`cartouche-template.latex`

```
pandoc source.md -o destination.pdf --template cartouche-template --highlight-style breezedark -f markdown-implicit_figures --number-sections
```

## yaml header

```
---
title: "My Title"
author: "Who"
date: "xx.10.2022"
keywords: []
toc: true
toc-title: "Table des matières"
toc-own-page: true
logo: /home/ebsd/Pictures/logo-hug-couleur.png
logo-width: 250px
code-block-font-size: \tiny
header-includes:
  - \usepackage{fourier}
  - \usepackage{pdflscape}
  - \newcommand{\blandscape}{\begin{landscape}}
  - \newcommand{\elandscape}{\end{landscape}}
reference: ""
catproc: "Procédure xxx"
instance: "Comité technique xxx"
scope: "xxx"
effective-date: "xx.xx.2022"
lastupdate: "xx.xx.2022"
version: "1.0"
---
```