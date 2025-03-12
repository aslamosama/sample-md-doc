PDF=output.pdf
DOCX=output.docx
ODT=output.odt
MD=*.md
METADATA=metadata.yaml
PANDOC_ENGINE=lualatex
FILTERS=--filter pandoc-crossref --citeproc
HIGHLIGHT=tango

all: $(PDF) $(DOCX) $(ODT)

$(PDF): $(wildcard $(MD)) $(METADATA)
	pandoc $(wildcard $(MD)) -o $(PDF) --pdf-engine=$(PANDOC_ENGINE) $(FILTERS) --highlight-style=$(HIGHLIGHT) --metadata-file=$(METADATA)

$(DOCX): $(wildcard $(MD)) $(METADATA)
	pandoc $(wildcard $(MD)) -o $(DOCX) $(FILTERS) --highlight-style=$(HIGHLIGHT) --metadata-file=$(METADATA)

$(ODT): $(wildcard $(MD)) $(METADATA)
	pandoc $(wildcard $(MD)) -o $(ODT) $(FILTERS) --highlight-style=$(HIGHLIGHT) --metadata-file=$(METADATA)

clean:
	rm -f $(PDF) $(DOCX) $(ODT)
