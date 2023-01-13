# Usage : make myfile-to-convert-to-pdf.pdf m="git commit message here"
# - devant une commande pour ignorer les erreurs et poursuivre

#git:
# si git log rencontre une erreur, c'est que il n'y a pas de repo dans ce directory
## si le code de sortie de git log est différent de 0, alors on lance un git init
#	$(eval EXITCODE="$(shell git log > /dev/null 2>&1 ; echo $$?)")
#	@if [ "$(EXITCODE)" != "0" ]; then git init; fi

#	-git add *.md
#	-git add $<
#	-git commit -m "$m"

%.pdf:  %.note.md
	pandoc $< -o $@ \
		--from markdown \
		--template=/home/ebsd/.pandoc/templates/pandoc_custom_note.latex \
		--highlight-style breezedark \
		-f markdown-implicit_figures \
		-H ~/.pandoc/templates/head.tex \
		--metadata-file=/home/ebsd/.pandoc/templates/metadata.yaml \
		--filter /usr/bin/pandoc-latex-environment

# si git log rencontre une erreur, c'est que il n'y a pas de repo dans ce directory
## si le code de sortie de git log est différent de 0, alors on lance un git init
	$(eval EXITCODE="$(shell git log > /dev/null 2>&1 ; echo $$?)")
	@if [ "$(EXITCODE)" != "0" ]; then git init; fi

	-git add $<
	-git commit -m "$m"


%.pdf:  %.man.md
	pandoc $< -o $@ \
		--from markdown \
		--template=/home/ebsd/.pandoc/templates/eisvogel.latex \
		--toc --number-sections --highlight-style breezedark \
		-H ~/.pandoc/templates/head.tex \
		--metadata-file=/home/ebsd/.pandoc/templates/metadata.yaml \
		--filter /usr/bin/pandoc-latex-environment

	$(eval EXITCODE="$(shell git log > /dev/null 2>&1 ; echo $$?)")
	@if [ "$(EXITCODE)" != "0" ]; then git init; fi

	-git add $<
	-git commit -m "$m"



%.pdf:  %.std.md
	pandoc $< -o $@ \
		--from markdown \
		--template=/home/ebsd/.pandoc/templates/cartouche-template.latex \
		--number-sections --highlight-style breezedark \
		-f markdown-implicit_figures \
		-H ~/.pandoc/templates/head.tex \
		--metadata-file=/home/ebsd/.pandoc/templates/metadata.yaml \
                --filter /usr/bin/pandoc-latex-environment

	$(eval EXITCODE="$(shell git log > /dev/null 2>&1 ; echo $$?)")
	@if [ "$(EXITCODE)" != "0" ]; then git init; fi

	-git add $<
	-git commit -m "$m"

