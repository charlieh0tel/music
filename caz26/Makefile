SRCS := $(wildcard *.mscz)
PDFS := $(SRCS:.mscz=.pdf)

MSCORE := mscore4portable

export QT_QPA_PLATFORM=offscreen

all: $(PDFS)

# Exports the full score as $*.pdf plus one "$*-<Part>.pdf" per part
# defined in the score.
%.pdf: %.mscz
	printf '[{"in": "%s", "out": ["%s", ["%s-", ".pdf"]]}]\n' "$<" "$@" "$*" > "$*.json"
	$(MSCORE) -j "$*.json"
	rm -f "$*.json"

clean:
	rm -f *.pdf *.json

.PHONY: all clean
