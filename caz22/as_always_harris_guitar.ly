% LilyBin

\version "2.18.0"
\include "english.ly"

\include "articulate.ly"

\header {
  piece = \markup { \fontsize #4 \bold "As (Always) - Gene Harris" }
  opus = \markup { \italic "Stevie Wonder / Gene Harris" }
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
  \tempo "Soul/R&B" 4 = 100
  \time 4/4
  % \compressFullBarRests
  % \override MultiMeasureRest.expand-limit = #2
}

my_notes = \relative c {
  \clef "G_8"
  \key b \major
  
  < fs as ds fs >8->
  < \deadNote fs \deadNote \deadNote as \deadNote ds \deadNote fs >16
  < \deadNote fs \deadNote \deadNote as \deadNote ds \deadNote fs >16

  < \deadNote fs \deadNote \deadNote as \deadNote ds \deadNote fs >16
  < fs as ds fs >16
  < \deadNote fs \deadNote \deadNote as \deadNote ds \deadNote fs >16
  < \deadNote fs \deadNote \deadNote as \deadNote ds \deadNote fs >16

  < fs a ds fs >8->
  < \deadNote fs \deadNote a \deadNote ds \deadNote fs >16
  < \deadNote fs \deadNote a \deadNote ds \deadNote fs >16

  < \deadNote fs \deadNote a \deadNote ds \deadNote fs >16
  < fs a ds fs >16
  < \deadNote fs \deadNote a \deadNote ds \deadNote fs >16
  < \deadNote fs \deadNote a \deadNote ds \deadNote fs >16  
 
 |
  
  < gs ds' fs b >8->
  < \deadNote gs \deadNote ds' \deadNote fs \deadNote b >16
  < \deadNote gs \deadNote ds' \deadNote fs \deadNote b >16

  < \deadNote gs \deadNote ds' \deadNote fs \deadNote b >16
  < gs ds' fs b >16
  < \deadNote gs \deadNote ds' \deadNote fs \deadNote b >16
  < \deadNote gs \deadNote ds' \deadNote fs \deadNote b >16
  
  < ds' gs cs >8->
  < ds gs b >8
  
  < b ds gs >8
  < \deadNote b \deadNote ds \deadNote gs >16
  < \deadNote b \deadNote ds \deadNote gs >16
  
  |
  
  \cbreak
    
  < fs as ds fs >8->
  r8.

  < fs as ds fs >16
  r8

  < fs a ds fs >8->
  r8.
  
  < fs a ds fs >16
  r8  
 
 |
  
  < gs ds' fs b >8->
  r8.
  
  < gs ds' fs b >16
  r8
  
  < ds' gs cs >8->
  < ds gs b >8
  
  < b ds gs >8
  r8
}

my_chords = \chordmode {
  b2:maj9 b:9 | e1:maj9 |
  b2:maj9 b:9 | e1:maj9 |
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
    \set Staff.midiInstrument = #"electric guitar (muted)"
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
  \articulate
  \removeWithTag #'scoreOnly \unfoldRepeats \my_music
  \midi {}
}
