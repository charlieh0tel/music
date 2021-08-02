all: \
  youwontseeme
.PHONY: all

radiohead_paranoid_android: \
  radiohead_paranoid_android.pdf radiohead_paranoid_android.midi \
  radiohead_paranoid_android.wav radiohead_paranoid_android.mp3
.PHONY: radiohead_paranoid_android

youwontseeme: \
  youwontseeme.pdf youwontseeme.midi \
  youwontseeme.wav youwontseeme.mp3
.PHONY: youwontseeme

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean


%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -A200 -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
