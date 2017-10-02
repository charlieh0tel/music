all: c_blues
.PHONY: all

c_blues: c_blues.pdf c_blues.midi c_blues.wav
.PHONY: c_blues

clean:
	rm -f *.pdf *.midi *.wav
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -Ow -o $@
