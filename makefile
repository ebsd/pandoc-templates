# Usage : make myfile-to-convert-to-pdf.pdf
# - devant une commande pour ignorer les erreurs et poursuivre

%.pdf:  %.note.md
	pandoc $< -o $@ \
		--from markdown \
		--template=${HOME}/.pandoc/templates/pandoc_custom_note.latex \
		--highlight-style breezedark \
		-f markdown-implicit_figures \
		-H ${HOME}/.pandoc/templates/head.tex \
		--metadata-file=${HOME}/.pandoc/templates/metadata.yaml \
		--filter ${HOME}/.local/bin/pandoc-latex-environment \
		#--filter /usr/lib/node_modules/mermaid-filter/index.js

	#rm mermaid-filter.err

%.pdf:  %.man.md
	pandoc $< -o $@ \
		--from markdown \
		--template=${HOME}/.pandoc/templates/eisvogel.latex \
		--toc --number-sections --highlight-style breezedark \
		-H ${HOME}/.pandoc/templates/head.tex \
		--metadata-file=/home/ebsd/.pandoc/templates/metadata.yaml \
		--filter ${HOME}/.local/bin/pandoc-latex-environment \
		--filter /usr/local/lib/nodejs/node-v21.5.0-linux-x64/lib/node_modules/mermaid-filter/index.js
		#--filter /usr/lib/node_modules/mermaid-filter/index.js

	rm mermaid-filter.err

%.tex:  %.man.md
	pandoc $< -o $@ \
		--from markdown \
		--template=${HOME}/.pandoc/templates/eisvogel.latex \
		--toc --number-sections --highlight-style breezedark \
		-H ${HOME}/.pandoc/templates/head.tex \
		--metadata-file=/home/ebsd/.pandoc/templates/metadata.yaml \
		--filter ${HOME}/.local/bin/pandoc-latex-environment

%.pdf:  %.std.md
	pandoc $< -o $@ \
		--from markdown \
		--template=${HOME}/.pandoc/templates/cartouche-template.latex \
		--number-sections --highlight-style breezedark \
		-f markdown-implicit_figures \
		-H ${HOME}/.pandoc/templates/head.tex \
		--metadata-file=${HOME}/.pandoc/templates/metadata.yaml \
                --filter ${HOME}/.local/bin/pandoc-latex-environment

%.pdf:  %.let.md
	pandoc $< -o $@ \
		--from markdown \
		--template=${HOME}/.pandoc/templates/lettre.latex 
