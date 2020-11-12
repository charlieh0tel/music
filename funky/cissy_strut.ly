% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Cissy Strut" }
  opus = \markup { \italic "The Meters" }
}

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 1\in
  bottom-margin = 1\in
}

global = {
  % \tempo "Funky" 4 = 88
  \time 4/4
  % \compressFullBarRests
  % \override MultiMeasureRest.expand-limit = #2
}

my_notes = \relative c {
  \clef "bass_8"
  \key ef \major
  
  %% A
  \version "2.20.0"
  
  \mark \markup { [A] } 
  c16\2 bf\2 g\3 ef~\3 ef8 c8~\4 c8. g16( a16\4) c8\3 a16\4 |
  c4~ c8. c16 g'16\2 \xNotesOn d16\3 \xNotesOff g,8~ g8 r8 \bar ":.|.:" \break
  
  \mark \markup { [B] }
  c'16\2[ r8 g16\3] c\2[ bf\2 r c\2] r bf\2 r8 r4 |
  c16\2[ r8 g16\3] c16\2 bf\2 g\3 c,\4 r2 \bar ":.|.:" \break
  
  \mark \markup { [C] }
  c4 r8. c16 g'16\2 d\3 g,8~ g4 | 
  g'8\2 c,8~ c8. c16 g'16\2 d16\3 g,8~\2 g8. g'16\2 \bar ":|."
  
  
}

my_music = <<
  \new Staff {
    \set Staff.midiInstrument = #"electric bass (finger)"
    \set Staff.midiMinimumVolume = #0.7
    \set Staff.midiMaximumVolume = #0.95
    \global
    \my_notes
  }
  \tag #'scoreOnly
  \new TabStaff
    \with { stringTunings = #bass-tuning } 
  { 
    %%\set TabStaff.minimumFret = #3f
    \set TabStaff.restrainOpenStrings = ##t
    \global
    \my_notes
  }
>>
  
\score {
  \removeWithTag #'midiOnly \my_music
  \layout {
    \context {
      \Score \override StringNumber #'stencil = ##f 
    }
  }
}

\score {
  \removeWithTag #'scoreOnly \unfoldRepeats \my_music
  \midi {}
}
