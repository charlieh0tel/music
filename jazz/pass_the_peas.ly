				% LilyBin

\version "2.16.2"

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
}

symbols = \relative c, {
  \clef "bass_8"
  \key c \major
  \time 4/4
  \tempo 4 = 100
  d16\tenuto f8-. f16-> (f8) g16 a16 r16 a8.-> c16\tenuto d16-. r8 |
  d,16\tenuto f8-. f16-> (f8) g16 a16 r16 a8.-> c16\tenuto d16-. r8 |
}

these_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  d1:m | s1 |
}

\header {
  piece = \markup { \fontsize #4 \bold "Pass The Peas" }
  opus = \markup { \italic "The J.B.'s" }
}
  
\score {
  <<
    \new ChordNames \these_chords
    \new Staff \symbols
    \new TabStaff
    \with { stringTunings = #bass-tuning } 
    { 
      %%\set TabStaff.minimumFret = #1
      %%\set TabStaff.restrainOpenStrings = ##t
      \symbols
    }
  >>
  \layout {
    \context {
      \Score
      %%proportionalNotationDuration = #(ly:make-moment 1/8)
      %%voltaSpannerDuration = 
      %%  #(ly:make-moment 3/4)
    }
  }
  \midi {}
}
