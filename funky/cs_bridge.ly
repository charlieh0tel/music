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
  \tempo "Funky" 4 = 66
  \time 4/4
  % \compressFullBarRests
  % \override MultiMeasureRest.expand-limit = #2
}

my_notes = \relative c {
  \clef "bass_8"
  \key ef \major
  
  %% A
  \version "2.20.0"
  
  
  \mark \markup { [C] }
  \repeat volta 16 {
  c4 r8. c16 g'16\2 d\3 g,8~ g4 | 
  g'8\2 c,8~ c8. c16 g'16\2 d16\3 g,8~\2 g8. g'16\2
  }
}

ticktock = \drummode {
  \repeat volta 16 {
    hiwoodblock 4 lowoodblock lowoodblock lowoodblock |
    hiwoodblock 4 lowoodblock lowoodblock lowoodblock
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
  \new DrumStaff {
    \new DrumVoice = "ticktock" {
      \set DrumStaff.instrumentName = "TickTock"
      \set DrumStaff.midiMaximumVolume = #0.7
      \global
      \ticktock
    }
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
