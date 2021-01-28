% LilyBin

\version "2.20.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Licking Stick" }
  opus = \markup { \italic "James Brown" }
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
  
  \partial 4 ef,16\3 g16\2 bf8\2 |
  \repeat volta 20 {
  ef16 [ ef8 ef16~ ] ef16 [ ef8 df16 ] ef16 df16 bf8\2 ef16 [ df16 bf8\2 ] |
  ef,8\3 r8 ef'16 ef16 df16 ef16 r4 ef,16\3 g16\2 bf8\2
  }
  
}

ticktock = \drummode {
  \partial 4 r4 |
  \repeat volta 40 {
    hiwoodblock 4 lowoodblock lowoodblock lowoodblock |
  }
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
  \tag #'midiOnly
  \new DrumStaff = TickTock <<
    \new DrumVoice = "ticktock" {
      \set DrumStaff.instrumentName = "TickTock"
      \set DrumStaff.midiMaximumVolume = #0.9
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
