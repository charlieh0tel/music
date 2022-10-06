all: \
  isnt_it_love_bass
.PHONY: all

isnt_it_love_bass: \
  isnt_it_love_bass.pdf isnt_it_love_bass.midi \
  isnt_it_love_bass.wav isnt_it_love_bass.mp3
.PHONY: isnt_it_love_bass

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -A200 -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
