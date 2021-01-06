all: good_times cissy_strut
.PHONY: all

good_times: \
  good_times.pdf good_times.midi \
  good_times.wav good_times.mp3
.PHONY: good_times

cissy_strut: \
  cissy_strut.pdf cissy_strut.midi \
  cissy_strut.wav cissy_strut.mp3
.PHONY: cissy_strut

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< \
          -A120 \
          -x"bank 0\n0 Tone_000/000_Acoustic_Grand_Piano.pat amp=20\n33	Tone_000/033_Finger_Bass.pat amp=120" \
          -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
