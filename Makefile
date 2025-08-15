PDF=output.pdf
MD=$(wildcard *.md)
METADATA=metadata.yaml
PANDOC_ENGINE=xelatex
FILTERS=--filter pandoc-crossref --filter pandoc-include --citeproc
HIGHLIGHT=tango

all: $(PDF)

$(PDF): $(MD) $(METADATA)
	pandoc $(MD) -o $(PDF) --pdf-engine=$(PANDOC_ENGINE) $(FILTERS) --highlight-style=$(HIGHLIGHT) --metadata-file=$(METADATA)

clean:
	rm -f $(PDF) *.aux *.log *.out
