all: pass_the_peas
.PHONY: all

pass_the_peas: pass_the_peas.pdf pass_the_peas.midi pass_the_peas.wav

clean:
	rm -f *.pdf *.midi *.wav
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -Ow -o $@
