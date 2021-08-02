all: \
  easy_bass_pg5
.PHONY: all

easy_bass_pg5: \
  easy_bass_pg5.pdf easy_bass_pg5.midi \
  easy_bass_pg5.wav easy_bass_pg5.mp3
.PHONY: easy_bass_pg5

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -A200 -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
