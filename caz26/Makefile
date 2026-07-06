SRCS := $(wildcard *.mscz)
PDFS := $(SRCS:.mscz=.pdf)

MSCORE := mscore4portable

export QT\_QPA\_PLATFORM=offscreen

all: $(PDFS)

%.pdf: %.mscz
	$(MSCORE) -o "$@" "$<"

clean:  
	rm -f $(PDFS)

.PHONY: all clean

