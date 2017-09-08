all: swingtest
.PHONY: all

swingtest: swingtest.pdf swingtest.midi swingtest.wav swingtest-1.wav
.PHONY: swingtest

clean:
	rm -f *.pdf *.midi *.wav
.PHONY: clean

%.pdf %.midi %-1.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -Ow -o $@
