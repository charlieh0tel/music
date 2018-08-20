all: unchain_my_heart \
  i_want_you_back \
  i_want_you_back_bridge \
  the_tears_of_a_clown \
  the_tears_of_a_clown_bassoon_riff \
  feel_it_still
.PHONY: all

unchain_my_heart: \
  unchain_my_heart.pdf unchain_my_heart.midi \
  unchain_my_heart.wav unchain_my_heart.mp3
.PHONY: unchain_my_heart

i_want_you_back: \
  i_want_you_back.pdf i_want_you_back.midi \
  i_want_you_back.wav i_want_you_back.mp3
.PHONY: i_want_you_back

i_want_you_back_bridge: \
  i_want_you_back_bridge.pdf i_want_you_back_bridge.midi \
  i_want_you_back_bridge.wav i_want_you_back_bridge.mp3
.PHONY: i_want_you_back_bridge

the_tears_of_a_clown: \
  the_tears_of_a_clown.pdf the_tears_of_a_clown.midi \
  the_tears_of_a_clown.wav the_tears_of_a_clown.mp3
.PHONY: the_tears_of_a_clown

the_tears_of_a_clown_bassoon_riff: \
  the_tears_of_a_clown_bassoon_riff.pdf the_tears_of_a_clown_bassoon_riff.midi \
  the_tears_of_a_clown_bassoon_riff.wav the_tears_of_a_clown_bassoon_riff.mp3
.PHONY: the_tears_of_a_clown_bassoon_riff

feel_it_still: \
  feel_it_still.pdf feel_it_still.midi \
  feel_it_still.wav feel_it_still.mp3
.PHONY: feel_it_still

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -A200 -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
