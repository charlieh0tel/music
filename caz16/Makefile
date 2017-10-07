all: celebration_bass ill_be_there_simplified ill_be_there_full love_train_bass reach_out
.PHONY: all

celebration_bass: celebration_bass.pdf celebration_bass.midi celebration_bass.wav
.PHONY: celebration_bass

ill_be_there_simplified: ill_be_there_simplified.pdf ill_be_there_simplified.midi ill_be_there_simplified.wav
.PHONY: ill_be_there_simplified

ill_be_there_full: ill_be_there_full.pdf ill_be_there_full.midi ill_be_there_full.wav
.PHONY: ill_be_there_full

love_train_bass: love_train_bass.pdf love_train_bass.midi love_train_bass.wav
.PHONY: love_train_bass

reach_out: reach_out.pdf reach_out.midi reach_out.wav
.PHONY: reach_out

clean:
	rm -f *.pdf *.midi *.wav
.PHONY: clean

%.pdf %.midi: %.ly
	lilypond $<

%.wav: %.midi
	timidity $< -Ow -o $@
