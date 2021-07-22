all: \
  best_of_my_love_bass lovely_day_bass
.PHONY: all

best_of_my_love_bass: \
  best_of_my_love_bass.pdf best_of_my_love_bass.midi \
  best_of_my_love_bass.wav best_of_my_love_bass.mp3
.PHONY: best_of_my_love_bass

lovely_day_bass: \
  lovely_day_bass.pdf lovely_day_bass.midi \
  lovely_day_bass.wav lovely_day_bass.mp3
.PHONY: lovely_day_bass

shut_up_and_dance_guitar: \
  shut_up_and_dance_guitar.pdf shut_up_and_dance_guitar.midi \
  shut_up_and_dance_guitar.wav shut_up_and_dance_guitar.mp3
.PHONY: shut_up_and_dance_guitar

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -A200 -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
