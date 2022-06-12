\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Handle with Care" }
  opus = \markup { \italic "Traveling Wilburys" }
}

\paper { 
  left-margin = 1.0 \in
  right-margin = 0.5 \in
  top-margin = 1.0 \in
  bottom-margin = 1.0 \in
}

global = {
  \time 4/4
  \tempo "Pop rock" 4 = 118
}

sbreak = { \break  }
cbreak = { \break }

my_notes = \relative c {
  \clef "treble_8"
  \key g \major
  
  \mark \markup { "Solo 1" }
  c'8\3 \glissando d\3 ~d4 r8 c\3 \glissando d\3 \glissando b8\3 ~ |
  b4 r8 b8\3 \glissando d8\3 fs4\2 ~ fs8\2 \glissando |
  %\cbreak
  e8\2 \glissando fs8\2 \glissando g4\2 \glissando d4\2 r4 \bar "||"
  
  \sbreak
  \mark \markup { "Solo 2" }
  \cbreak
  c'8\2 \glissando d4~\2 ~ d8\2
  r8 
  c\2 \glissando d8\2 \glissando b8\2 | g4\3
  r16
  g16\3 b8\2 \glissando d8\2 fs4\1 ~ fs8\1 |
  
  \cbreak
  e8\1 \glissando fs8\1 \glissando g8 d4\2 r4
  b8\2 \glissando |
  
  c8\2 e4\1
  r4
  e4\1 \glissando fs8\1 \glissando |
  
  g8\1 d8\2 \glissando b4\2 g4\3 e4\3 |
  r8
  c'4\1 \glissando c8\1 \glissando c8\1  b4\1 g8\2 ~ g4\2 r4 r2 | \bar "||" 
} 

my_music = <<
  \new Staff {
    \set Staff.midiInstrument = #"electric guitar"
    \set Staff.midiMinimumVolume = #0.7
    \set Staff.midiMaximumVolume = #0.95
    \global
    \my_notes
  }
  \tag #'scoreOnly
  \new TabStaff
    \with { stringTunings = #guitar-tuning } 
  { 
    %\set TabStaff.minimumFret = #3
    %\set TabStaff.restrainOpenStrings = ##t
    \global
    \my_notes
  }
>>
  
\score {
  \removeWithTag #'midiOnly \my_music
  \layout {
    \context {
      \Score
        \override StringNumber #'stencil = ##f
        \override ChordName.font-size = -2
    }
  }
}

\score {
  \removeWithTag #'scoreOnly \unfoldRepeats \my_music
  \midi {}
}
