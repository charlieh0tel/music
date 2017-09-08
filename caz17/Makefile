all: nowhere_to_run rescue_me the_way_you_do_the_things_you_do
.PHONY: all

nowhere_to_run: nowhere_to_run.pdf nowhere_to_run.midi nowhere_to_run.wav
.PHONY: nowhere_to_run

rescue_me: rescue_me.pdf rescue_me.midi rescue_me.wav
.PHONY: rescue_me

the_way_you_do_the_things_you_do: the_way_you_do_the_things_you_do.pdf the_way_you_do_the_things_you_do.midi the_way_you_do_the_things_you_do.wav
.PHONY: the_way_you_do_the_things_you_do

clean:
	rm -f *.pdf *.midi *.wav
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -Ow -o $@
