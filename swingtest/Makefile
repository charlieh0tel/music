all: swingtest
.PHONY: all

swingtest: swingtest.pdf swingtest.midi swingtest.wav swingtest-1.wav
.PHONY: swingtest

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -Ow -o $@
