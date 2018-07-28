% LilyBin

% Celebration - Kool and The Gang

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
}

symbols = {
  \mark \markup { \italic {(Drum Pickup)} }
  \time 2/4 r2 |
  \time 4/4 \compressMMRests { R1*8 } |
  \break
  
  %A
  \mark \default
  \repeat volta 2 {
    r8 \f f8 f8 ges8 ges4-. f4-. |
    ges8. f16 r8 aes8-> (aes8) aes8 aes8 aes16 aes16 |
    r8 f8 f8 ges8 ges4-. f4-. |
    ges8. f16 r8 aes8-> (aes8) aes8 aes8 aes16 aes16 |
  }
  \break
  
  %B 
  \mark \default
  \repeat volta 2 {
  r8 \mark \markup { \musicglyph #"scripts.segno" } f8 f8 ges8 ges4-. f4-. |
  ges8. f16 r8 aes8-> (aes8) aes8 aes8 aes16 aes16 |
  r8 f8 f8 ges8 ges4-. f4-. |
  ges8. f16 r8 aes8-> (aes8) aes8 aes8 aes16 aes16 |
  r8 f8 f8 ges8 ges4-. f4-. |
  ges8. f16 r8 aes8-> (aes8) aes8 aes8 aes16 aes16 |
  r8 f8 f8 ges8 ges4-. f4-. |
  ges8. f16 r8 aes8-> (aes8) aes8 aes8 aes16 aes16 |
  \break
  
  %C
  \mark \default
  aes8 aes8 aes8 aes8 aes4 aes4 |
  aes8 aes8 aes8 aes16 aes16 r2 |
  aes8 aes8 aes8 aes8 aes4 aes4 |
  aes8 aes8 aes8 aes16 aes16 r2 |
  aes8 aes8 aes8 aes8 aes4 aes4 |
  aes8 aes8 aes8 aes16 aes16 r2 |
  aes8 aes8 aes8 aes8 aes4 aes4 |
  aes8 aes8 aes8 aes16 aes16 r2 |
  \break
  
  %D
  \mark \default
  aes8 aes8 aes8 aes8 aes4 aes4 |
  aes8 aes8 aes8 aes16 aes16 r2 |
  aes8 aes8 aes8 aes8 aes4 aes4 |
  aes8 aes8 aes8 aes16 aes16 r2 |
  aes8 aes8 aes8 aes8 aes4 aes4 |
  aes8 aes8 aes8 aes16 aes16 r2 |
  aes8 aes8 aes8 aes8 aes4 aes4 |
  aes8 aes8 aes8 aes16 aes16 
    \mark \markup { 
	  \italic { "To Coda" } 
	  \musicglyph #"scripts.coda" } 
	r2 |
  \break
  
  %E
  \mark \default
  des8-. des8-. des8-. des8-. des4 des4 |
  c8-. c8-. c8-. c16 c16 r2 |
  f,8-. f8-. f8-. f8-. f4 f4 |
  f8-. f8-. f8-. f16 f16 r2 |
  bes8-. bes8-. bes8-. bes8-. bes4 bes4 |
  ees4 \< es4 \! \f es8-^-. es8-^-. es4-^-. | %gliss
  \break
  
  %F
  \mark \default
  r8 f,8 f8 ges8 ges4-. f4-. |
  ges8. f16 r8 aes8-> (aes8) aes8 aes8 aes16 aes16 |
  r8 f8 f8 ges8 ges4-. f4-. |
  ges8. f16 r8 aes8-> (aes8) aes8 aes8 aes16 aes16 |
  r8 f8 f8 ges8 ges4-. f4-. |
  ges8. f16 r8 aes8-> (aes8) aes8 aes8 aes16 aes16 |
  r8 f8 f8 ges8 ges4-. f4-. |
  \break
  }
  \alternative {
  {
  % alt ending 1
  ges8. f16 r8 aes8-> (aes8) aes8 aes8 aes16 aes16 |
  }
  {
  % alt ending 2
  ges8. f16 r8 aes8-> (aes8) aes8 aes8 aes16
    \mark \markup { \italic { "D.S. al Coda" } } 
	aes16 |
  }
  }
  \break
  
  %G
  \repeat volta 2 {
  \mark \default
  r8 \mark \markup { \italic { "Coda" } \musicglyph #"scripts.coda" } 
    f8 f8 ges8 ges4-. f4-. |
  ges8. f16 r8 aes8-> (aes8) aes8 aes8 aes16 aes16 |
  r8 f8 f8 ges8 ges4-. f4-. |
  ges8. f16 r8 aes8-> (aes8) aes8 aes8 aes16 aes16 |
  }
  \break

  \mark \default
  \repeat volta 2 {
  r8
    \mark \markup { \italic { "Open for Guiar Solo/Vocal Adlib" }}
    f8 f8 ges8 ges4-. f4-. |
  ges8. f16 r8 aes8-> (aes8) aes8 aes8 aes16 aes16 |
  r8 f8 f8 ges8 ges4-. f4-. |
  }
  \alternative {
  {
  % alt ending 1, for vamp
  ges8. f16 r8 aes8-> (aes8) aes8 aes8 aes16 aes16 |
  \break
  }
  {
  % alt ending 2, last X
  ges8.-> \< f16->-. r8 aes8-> \! (aes2) \fermata r2 |
  }
  }

  
  
}

\score{
  \header {
    piece = \markup { \fontsize #4 \bold "Celebration" }
    opus = \markup { \italic "Kool & The Gang" }
  }
  %\unfoldRepeats {
	<<
    %\new RhythmicStaff
	%  { \relative c,, { \symbols }}
    \new Staff
	  { \clef "bass_8" \key aes \major
	    \relative c,, { \symbols }}
	\new TabStaff
	  \with { stringTunings = #bass-tuning } 
	  { 
	    \set TabStaff.minimumFret = #1
        \set TabStaff.restrainOpenStrings = ##t
	    \relative c,, { \symbols }
	  }
    >>
	%}
	\layout {
      \context {
        \Score
		  markFormatter = #format-mark-box-alphabet
          proportionalNotationDuration =
		    #(ly:make-moment 1/8)
		  %voltaSpannerDuration = 
		  %  #(ly:make-moment 3/4)
      }
    }
	
	\midi{}
}
