ALL:=
ALL+=come_and_get_your_love_guitar

all: $(ALL)
.PHONY: all

come_and_get_your_love_guitar: \
  come_and_get_your_love_guitar.pdf come_and_get_your_love_guitar.midi \
  come_and_get_your_love_guitar.wav come_and_get_your_love_guitar.mp3
.PHONY: come_and_get_your_love_guitar

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -A200 -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
