HTML2MARKDOWN=html2text
PYTHON=python
PYTHONFLAGS=
SPECSPLITTER=spec-splitter.py
SPECSPLITTERFLAGS=
SINGLEPAGE=index.html
MULTIPAGE=spec.html

all: $(MULTIPAGE) README.md

README.md: README.html
	$(HTML2MARKDOWN) $(HTML2MARKDOWNFLAGS) $< > $@

$(MULTIPAGE): index.html
	$(PYTHON)$(PYTHONFLAGS) $(SPECSPLITTER) $(SPECSPLITTERFLAGS) $< .

clean:
	$(RM) $(MULTIPAGE)
	$(RM) README.md
