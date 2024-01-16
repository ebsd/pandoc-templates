# Usage

Clone this repo into `~/.pandoc/templates`.

```
mkdir $HOME/.pandoc
cd $HOME/.pandoc
git clone https://github.com/ebsd/pandoc-templates.git templates
```

# Custom notes template

Convert .md to .pdf :

```
pandoc file.md -o file.pdf --from markdown --template pandoc_custom_note --highlight-style breezedark
```

## Use the makefile

```
make -f ~/.pandoc/templates/makefile mydoc.pdf
```

## yaml header for markdown file

Please read template file `pandoc_custom_note.latex`.

Or check `note-template-pandoc-markdown.md`.

# Eisvogel template

Is coming from https://github.com/Wandmalfarbe/pandoc-latex-template. Download it :

```
wget https://raw.githubusercontent.com/Wandmalfarbe/pandoc-latex-template/master/eisvogel.tex -O ~/.pandoc/templates/eisvogel.latex
```
Convert .md to .pdf :

```
pandoc file.md -o file.pdf --from markdown --template eisvogel --toc --number-sections --highlight-style breezedark
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
logo: /home/ebsd/Pictures/logo.png
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

# Modèle de lettre : lettre.latex
Source: https://raw.githubusercontent.com/Pinkilla/pandoc-pitletter/master/template/lettre.tex

## YaML header

```
---
author: François Pignon
from:
 - Passerelle des champions du monde, 1
 - 1000 Bruxelles
 - \texttt{fpignon@example.org}
to: 
 - Éditions ACME
 - Pierre Brochan
 - Ruelle incroyable, 112
 - 1000 Bien bien loin
object: L'objet de ma lettre
vref: Vos références
mref: Mes références
opening: Monsieur,
closing: Salutations,
---
```
