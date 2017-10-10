all: easy_bass_pg5
.PHONY: all

easy_bass_pg5: easy_bass_pg5.pdf easy_bass_pg5.midi easy_bass_pg5.wav
.PHONY: easy_bass_pg5

clean:
	rm -f *.pdf *.midi *.wav
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -Ow -o $@
