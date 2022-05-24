all: \
  working_my_way_spinners_bass
.PHONY: all

working_my_way_spinners_bass: \
  working_my_way_spinners_bass.pdf working_my_way_spinners_bass.midi \
  working_my_way_spinners_bass.wav working_my_way_spinners_bass.mp3
.PHONY: working_my_way_spinners_bass

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -A200 -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
