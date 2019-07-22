all: shining_star
.PHONY: all

shining_star: \
  shining_star.pdf shining_star.midi \
  shining_star.wav shining_star.mp3
.PHONY: shining_star

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -A200 -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
