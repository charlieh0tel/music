all: f_blues
.PHONY: all

f_blues: f_blues.pdf f_blues.midi f_blues.wav
.PHONY: f_blues

clean:
	rm -f *.pdf *.midi *.wav
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -Ow -o $@
