all: f_blues
.PHONY: all

f_blues: f_blues.pdf f_blues.midi f_blues.wav
.PHONY: f_blues

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -Ow -o $@
