% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Wake Me Up Before You Go-Go" }
  opus = \markup { \italic "Wham" }
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
  %% \tempo "" 4 = 150
  \time 4/4
}

my_notes = \relative c {
  \clef "bass_8"
  \key c \major

  \partial 4. g,8 \mf a8\4 g8 \bar "||"
  c4-^ c4-^ r2 |
  r2 r8 g8 a8\4 g8 |
  
  %% 5
  \break
  r2 r8 g8 a8\4 g8 |
  c4-^ c4-^ r2 |
  r2 r8 g8 a8\4 g8 |
  c4-^ c4-^ r2 |
  r1 \bar "||"
  
  %% 10
  \break
  \mark \markup { \bold { [A] } }
  c8 \mf r8 c8 r8 c4. c8 |
  r8 c8 a8 r8 c4 c8 a8 |
  d8 r8 d8 r8 d4. c8 |
  r8 g8 a8 e'8~ e8 g4 g,8 |
  
  %% 14
  c8 r8 c8 r8 c4. c8 |
  r8 c8 a8 c8~ c4 r4 |
  d8 r8 d8 r8 d4. c8 |
  r8 g8 c8 e8~ e8 g4. \bar "||"
  
  %% 18
  \break
  \mark \markup { \bold { [B] } }
  d8 \cresc r8 r8 d8~ d8 a'8 g8 a8 |
  \tuplet 3/2 { as8 a8 g8 } \tuplet 3/2 { gs8 g8 e8~ } e8 e,4.-> |
  f'8 r8 r8 f8~ f2 | g8 r r8 \! a8~ a8 \> a,4. \! |
  
  %% 22
  \break
  d8 \cresc r8 r8 d8~ d2 | e8 r8 r8 e,8~ e2 | f'8 r8 r8 f8~ f8 a8 f'8 a,8 \! |
  
  %% 26
  \break
  \tuplet 3/2 { g8\3 \f d'8\2 g8 } 
  \tuplet 3/2 { g,8\3 d'8\2 g8 }
  \tuplet 3/2 { g,8\3 d'8\2 g8 }
  g4 \glissando |
  g,8 r8 g,8 r8 r2 \bar "||"
  
  
  
  
  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
}

ticktock = \drummode {
  \repeat unfold 4 {
    hiwoodblock 4 lowoodblock lowoodblock hiwoodblock lowoodblock lowoodblock
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
