all: \
  best_of_my_love_bass
.PHONY: all

best_of_my_love_bass: \
  best_of_my_love_bass.pdf best_of_my_love_bass.midi \
  best_of_my_love_bass.wav best_of_my_love_bass.mp3
.PHONY: best_of_my_love_bass

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -A200 -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
