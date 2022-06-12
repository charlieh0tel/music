all: \
  working_my_way_spinners_bass \
  just_what_i_needed_bass \
  dancing_queen_bass \
  ill_take_you_there_bass \
  here_comes_the_rain_bass
.PHONY: all

working_my_way_spinners_bass: \
  working_my_way_spinners_bass.pdf working_my_way_spinners_bass.midi \
  working_my_way_spinners_bass.wav working_my_way_spinners_bass.mp3
.PHONY: working_my_way_spinners_bass

just_what_i_needed_bass: \
  just_what_i_needed_bass.pdf just_what_i_needed_bass.midi \
  just_what_i_needed_bass.wav just_what_i_needed_bass.mp3
.PHONY: just_what_i_needed_bass

ill_take_you_there_bass: \
  ill_take_you_there_bass.pdf ill_take_you_there_bass.midi \
  ill_take_you_there_bass.wav ill_take_you_there_bass.mp3
.PHONY: ill_take_you_there_bass

here_comes_the_rain_bass: \
  here_comes_the_rain_bass.pdf here_comes_the_rain_bass.midi \
  here_comes_the_rain_bass.wav here_comes_the_rain_bass.mp3
.PHONY: here_comes_the_rain_bass

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -A200 -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
