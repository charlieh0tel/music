all: unchain_my_heart i_want_you_back tears_of_a_clown
.PHONY: all

unchain_my_heart: \
  unchain_my_heart.pdf unchain_my_heart.midi \
  unchain_my_heart.wav unchain_my_heart.mp3
.PHONY: unchain_my_heart

i_want_you_back: \
  i_want_you_back.pdf i_want_you_back.midi \
  i_want_you_back.wav i_want_you_back.mp3
.PHONY: i_want_you_back

tears_of_a_clown: \
  tears_of_a_clown.pdf tears_of_a_clown.midi \
  tears_of_a_clown.wav tears_of_a_clown.mp3
.PHONY: tears_of_a_clown

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
