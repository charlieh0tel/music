% LilyBin

\version "2.22.1"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Rainbow" }
  opus = \markup { \italic "Words by Abbey Lincoln, Music by Melba Listonos" }
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
  % \tempo "" 4 = xx
  \time 4/4
  % \compressFullBarRests
  % \override MultiMeasureRest.expand-limit = #2
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  
  f2:maj7 d2:7 | 
}

my_music = <<
  \new ChordNames {
    \set ChordNames.midiInstrument = "percussive organ"
    \set ChordNames.midiMaximumVolume = #0.2
    \set chordChanges = ##t
    \global
    \my_chords
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
