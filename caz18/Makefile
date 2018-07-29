all: unchain_my_heart
.PHONY: all

unchain_my_heart: unchain_my_heart.pdf unchain_my_heart.midi unchain_my_heart.wav unchain_my_heart.mp3
.PHONY: unchain_my_heart

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -i $< $@
