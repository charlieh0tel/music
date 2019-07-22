all: shining_star do_you_love_me
.PHONY: all

shining_star: \
  shining_star.pdf shining_star.midi \
  shining_star.wav shining_star.mp3
.PHONY: shining_star

do_you_love_me: \
  do_you_love_me.pdf do_you_love_me.midi \
  do_you_love_me.wav do_you_love_me.mp3
.PHONY: do_you_love_me

clean:
	rm -f *.pdf *.midi *.wav *.mp3
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -A200 -Ow -o $@

%.mp3: %.wav
	ffmpeg -y -loglevel warning -i $< $@
