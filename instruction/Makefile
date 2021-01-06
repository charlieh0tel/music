all: \
  friedland
.PHONY: all

friedland: \
  friedland.pdf friedland.midi \
  friedland.wav friedland.mp3
.PHONY: friedland

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean


%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -A200 -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
