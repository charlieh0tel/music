all: unchain_my_heart
.PHONY: all

unchain_my_heart: unchain_my_heart.pdf unchain_my_heart.midi unchain_my_heart.wav
.PHONY: unchain_my_heart

clean:
	rm -f *.pdf *.midi *.wav
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -Ow -o $@
