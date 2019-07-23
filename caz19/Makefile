all: \
  shining_star_bass \
  do_you_love_me_bass \
  our_lips_are_sealed_bass \
  steady_as_she_goes_bass
.PHONY: all

shining_star_bass: \
  shining_star_bass.pdf shining_star_bass.midi \
  shining_star_bass.wav shining_star_bass.mp3
.PHONY: shining_star_bass

do_you_love_me_bass: \
  do_you_love_me_bass.pdf do_you_love_me_bass.midi \
  do_you_love_me_bass.wav do_you_love_me_bass.mp3
.PHONY: do_you_love_me_bass

our_lips_are_sealed_bass: \
  our_lips_are_sealed_bass.pdf our_lips_are_sealed_bass.midi \
  our_lips_are_sealed_bass.wav our_lips_are_sealed_bass.mp3
.PHONY: our_lips_are_sealed_bass

steady_as_she_goes_bass: \
  steady_as_she_goes_bass.pdf steady_as_she_goes_bass.midi \
  steady_as_she_goes_bass.wav steady_as_she_goes_bass.mp3
.PHONY: steady_as_she_goes_bass

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -A200 -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
