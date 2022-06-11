all: \
  working_my_way_spinners_bass \
  just_what_i_needed_bass \
  dancing_queen_bass \
  ill_take_you_there
.PHONY: all

working_my_way_spinners_bass: \
  working_my_way_spinners_bass.pdf working_my_way_spinners_bass.midi \
  working_my_way_spinners_bass.wav working_my_way_spinners_bass.mp3
.PHONY: working_my_way_spinners_bass

just_what_i_needed_bass: \
  just_what_i_needed_bass.pdf just_what_i_needed_bass.midi \
  just_what_i_needed_bass.wav just_what_i_needed_bass.mp3
.PHONY: just_what_i_needed_bass

ill_take_you_there: \
  ill_take_you_there.pdf ill_take_you_there.midi \
  ill_take_you_there.wav ill_take_you_there.mp3
.PHONY: ill_take_you_there

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -A200 -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
