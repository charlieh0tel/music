% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Do You Love Me" }
  opus = \markup { \italic "The Contours" }
}

\paper { 
  left-margin = 1.0 \in
  right-margin = 0.5 \in
}

mBreak = {
  %% \break
}

cBreak = { \break }

global = {
  \time 4/4
  \tempo "" 4 = 150
}

my_notes = \relative c {
  \clef "bass_8"
  \key f \major

  \time 6/4 
  f,1. | bf,1. | c1. | d1.\3 \bar "||"
  
  %% 5
  \break
  \time 4/4
  c4-. r4 r2 | R1 | r8 c8 c8 c8 c4-. r4 \bar "||"
  
  %% 8
  \break
  \mark \markup { \bold { [DO YOU LOVE ME] } }
  \repeat percent 3 { f,4 f8 a8~ a8 a8 c4 | bf4 bf8 c8~ c8 c8 g4 | }
  \bar "||"
  
  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  
  \time 6/4
  f1. | bf1. | c1. | d1.:min |
  
  %% 5
  \time 4/4
  c1:7 | s1 | s1 |
  
  %% 8
  f2 f2/a | bf2 c2 | s1 | s1 | s1 | s1 |
  bf1 | bf1:min |
  c1 | s1 | s1 | s1 |
  
  
  
  
}

ticktock = \drummode {
  \repeat unfold 40 {
    hiwoodblock 4 lowoodblock lowoodblock lowoodblock
  }
  \repeat volta 2 {
    \repeat unfold 7 {
      hiwoodblock 4 lowoodblock lowoodblock lowoodblock
    }
  } \alternative {
    { hiwoodblock 4 lowoodblock lowoodblock lowoodblock }
    { hiwoodblock 4 lowoodblock lowoodblock lowoodblock }
  }
  \repeat unfold 16 {
    hiwoodblock 4 lowoodblock lowoodblock lowoodblock
  }
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
    %%\set TabStaff.restrainOpenStrings = ##t
    \global
    \my_notes
  }
  \tag #'midiOnly
  \new DrumStaff = TickTock <<
    \new DrumVoice = "ticktock" {
      \set DrumStaff.instrumentName = "TickTock"
      \set DrumStaff.midiMaximumVolume = #0.7
      \global
      \ticktock
    }
  >>
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
