ALL:=
ALL+=working_my_way_spinners_bass
ALL+=working_my_way_spinners_guitar
ALL+=working_my_way_spinners_guitar_excerpt
ALL+=just_what_i_needed_bass
ALL+=dancing_queen_bass
ALL+=dancing_queen_guitar
ALL+=ill_take_you_there_bass
ALL+=here_comes_the_rain_again_bass
ALL+=handle_with_care_slide_solo
ALL+=so_very_hard_to_go_bass
ALL+=as_always_harris_guitar
ALL+=as_always_harris_bass
ALL+=clarences_place_bass
ALL+=clarences_place_keys

all: $(ALL)
.PHONY: all

working_my_way_spinners_bass: \
  working_my_way_spinners_bass.pdf working_my_way_spinners_bass.midi \
  working_my_way_spinners_bass.wav working_my_way_spinners_bass.mp3
.PHONY: working_my_way_spinners_bass

working_my_way_spinners_guitar: \
  working_my_way_spinners_guitar.pdf working_my_way_spinners_guitar.midi \
  working_my_way_spinners_guitar.wav working_my_way_spinners_guitar.mp3
.PHONY: working_my_way_spinners_guitar

working_my_way_spinners_guitar_excerpt: \
  working_my_way_spinners_guitar_excerpt.pdf working_my_way_spinners_guitar_excerpt.midi \
  working_my_way_spinners_guitar_excerpt.wav working_my_way_spinners_guitar_excerpt.mp3
.PHONY: working_my_way_spinners_guitar_excerpt

just_what_i_needed_bass: \
  just_what_i_needed_bass.pdf just_what_i_needed_bass.midi \
  just_what_i_needed_bass.wav just_what_i_needed_bass.mp3
.PHONY: just_what_i_needed_bass

dancing_queen_bass: \
  dancing_queen_bass.pdf dancing_queen_bass.midi \
  dancing_queen_bass.wav dancing_queen_bass.mp3
.PHONY: dancing_queen_bass

dancing_queen_guitar: \
  dancing_queen_guitar.pdf dancing_queen_guitar.midi \
  dancing_queen_guitar.wav dancing_queen_guitar.mp3
.PHONY: dancing_queen_guitar

ill_take_you_there_bass: \
  ill_take_you_there_bass.pdf ill_take_you_there_bass.midi \
  ill_take_you_there_bass.wav ill_take_you_there_bass.mp3
.PHONY: ill_take_you_there_bass

here_comes_the_rain_again_bass: \
  here_comes_the_rain_again_bass.pdf here_comes_the_rain_again_bass.midi \
  here_comes_the_rain_again_bass.wav here_comes_the_rain_again_bass.mp3
.PHONY: here_comes_the_rain_again_bass

handle_with_care_slide_solo: \
  handle_with_care_slide_solo.pdf handle_with_care_slide_solo.midi \
  handle_with_care_slide_solo.wav handle_with_care_slide_solo.mp3
.PHONY: handle_with_care_slide_solo

so_very_hard_to_go_bass: \
  so_very_hard_to_go_bass.pdf so_very_hard_to_go_bass.midi \
  so_very_hard_to_go_bass.wav so_very_hard_to_go_bass.mp3
.PHONY: so_very_hard_to_go_bass

as_always_harris_guitar: \
  as_always_harris_guitar.pdf as_always_harris_guitar.midi \
  as_always_harris_guitar.wav as_always_harris_guitar.mp3
.PHONY: as_always_harris_guitar

as_always_harris_bass: \
  as_always_harris_bass.pdf as_always_harris_bass.midi \
  as_always_harris_bass.wav as_always_harris_bass.mp3
.PHONY: as_always_harris_bass

clarences_place_bass: \
  clarences_place_bass.pdf clarences_place_bass.midi \
  clarences_place_bass.wav clarences_place_bass.mp3
.PHONY: clarences_place_bass

clarences_place_keys: \
  clarences_place_keys.pdf clarences_place_keys.midi \
  clarences_place_keys.wav clarences_place_keys.mp3
.PHONY: clarences_place_keys

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -A200 -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
