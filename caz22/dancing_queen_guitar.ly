% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Dancing Queen" }
  opus = \markup { \italic "Abba" }
}

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 1\in
  bottom-margin = 1\in
}

cbreak = { 
  \break
} 

sbreak = { \break }

global = {
  \tempo "Disco" 4 = 100
  \time 4/4
  % \compressFullBarRests
  % \override MultiMeasureRest.expand-limit = #2
}

my_notes = \relative c {
  \clef "G_8"
  \key a \major
  
  <e a cs e>16 <e a cs e>8 <e a cs e>16 <e a cs e>8 <e a cs e>16 <e a cs e>16 ~ <e a cs e>16 <e a cs e>16 <e a cs e>8 ~ <e a cs e>4 |
  <d fs a d>16 <d fs a d>8 <d fs a d>16 <d fs a d>8 <d fs a d>16 <d fs a d>16 ~ <d fs a d>16 <d fs a d>16 <d fs a d>8 ~ <d fs a d>4 |
  <e a cs e>16 <e a cs e>8 <e a cs e>16 <e a cs e>8 <e a cs e>16 <e a cs e>16 ~ <e a cs e>16 <e a cs e>16 <e a cs e>8 ~ <e a cs e>4 |
  <d fs a d>16 <d fs a d>8 <d fs a d>16 <d fs a d>8 <d fs a d>16 <d fs a d>16 ~ <d fs a d>16 <d fs a d>16 <d fs a d>8 ~ <d fs a d>4 |
  \break
  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  
  a1 | d/a | a | d/a | % a | d/a | a2.:maj9 a4 e/gs |
}

my_music = <<
  \new ChordNames {
    \set ChordNames.midiInstrument = "percussive organ"
    \set ChordNames.midiMaximumVolume = #0.2
    \set chordChanges = ##t
    \global
    \my_chords
  }
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
