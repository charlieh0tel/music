% LilyBin

% (Reach Out) I'll Be There - Four Tops

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
}

symbols = {
  \repeat volta 2 {
    ees8 ees8 ees8 ees16 bes16 ees8 ees4 ees16 bes16 |
    ees8 ees8 ees8 ees16 bes16 ees8 ees4 ees8 |
    \break
    bes4 bes8. f'16 bes8 bes8 aes8 bes16 f16 |
  }
  \alternative {
  {
    bes,4 bes8. f'16 bes16 bes16 bes,8 c8 d8 | 
  }
  {
    bes'8 bes8 bes4 bes4 r4 |
  }
  }
  \break
  f,8 f16 f16 f8 f16 f16 f8 f8 g8 a8 | r1
  
		
}

\score{
  \header {
    piece = \markup { \fontsize #4 \bold "(Reach Out) I'll Be There" }
    opus = \markup { \italic "Four Tops" }
  }
  %\unfoldRepeats {
	<<
    %\new RhythmicStaff
	%  { \relative c, { \symbols }}
    %\new ChordNames { \relative c, \symbols }
    \new Staff
    	  { \clef "bass_8" \key ges \major
	    \relative c, { \symbols }}
    \new TabStaff
	  \with { stringTunings = #bass-tuning } 
	  { 
	    \set TabStaff.minimumFret = #1
            \set TabStaff.restrainOpenStrings = ##t
	    \relative c, { \symbols }
	  }
    >>
	%}
	\layout {
      \context {
        \Score
          proportionalNotationDuration =
		    #(ly:make-moment 1/8)
		  %voltaSpannerDuration = 
		  %  #(ly:make-moment 3/4)
      }
    }
	
	\midi{}
}
