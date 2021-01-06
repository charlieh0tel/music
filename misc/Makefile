all: \
  scarlet_begonias_bass
.PHONY: all

scarlet_begonias_bass: \
  scarlet_begonias_bass.pdf scarlet_begonias_bass.midi \
  scarlet_begonias_bass.wav scarlet_begonias_bass.mp3
.PHONY: scarlet_begonias_bass

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -A200 -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
