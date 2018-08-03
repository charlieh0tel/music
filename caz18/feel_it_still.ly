% LilyBin

\version "2.18.0"

\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Feel It Still" }
  opus = \markup { \italic "Portugal, The Man" }
}

\paper { 
  left-margin = 1.0\in
  right-margin = 0.5\in
}

my_notes = \relative c {
  \clef "guitar_8"
  \key e \major
  \time 4/4
  \tempo 4 = 135

  cs'''8 cs8 b8 cs8 b8 gs8 fs8 e8 |
  fs8 e8 cs8 b8 cs8 e8 cs4 |
  \break
  
  cs,8 cs8 b8 cs8 b8 gs8 fs8 e8 |
  fs8 e8 cs8 b8 cs8 e8 cs4 |
  \break
  
  \set TabStaff.minimumFret = #4
  cs'8 cs8 b8 cs8 b8 gs8 fs8 e8 |
  fs8 e8 cs8 b8 cs8 e8 cs4 |
  
}

my_music = <<
  \new Staff {
    \set Staff.midiInstrument = #"electric bass (finger)"
    \my_notes
  }
  \new TabStaff
  \with { stringTunings = #guitar-tuning } 
  { 
    \set TabStaff.minimumFret = #1
    \set TabStaff.restrainOpenStrings = ##t
    \my_notes
  }
>>
  
\score {
  \my_music
  \layout {
    \context {
      \Score
    }
  }
}

\score {
  \unfoldRepeats
  \my_music
  \midi {}
}

