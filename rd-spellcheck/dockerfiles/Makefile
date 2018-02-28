# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build -c _config
SPHINXPROJ    = spelling
SOURCEDIR     = .
BUILDDIR      = docs/_build
CONFPATH	= -c _config
ALLSPHINXOPTS = -d $(BUILDDIR)/doctrees $(SPHINXOPTS) docs

# Put it first so that "make" without argument is like "make help".
.PHONY: help
help:
	@echo "  spellcheck to run spellcheck against the docs"

.PHONY: spellcheck
spellcheck:
	@rm -rf $(BUILDDIR)/*
	@$(SPHINXBUILD) -b spelling -j 4 $(ALLSPHINXOPTS) $(BUILDDIR)/spellcheck/$*


# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
#%: Makefile
#	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
