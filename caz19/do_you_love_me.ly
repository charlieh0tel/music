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
  \tempo "" 4 = 150
}

my_notes = \relative c {
  \clef "bass_8"
  \key f \major

  \time 6/4 
  f,1. | bf,1. | c1. | d1.\3 |
  
  %% 5
  \break
  \time 4/4
  c4-. r4 r2 | R1 | r8 c8 c8 c8 c4-. r4 \bar "||"
  
  %% 8
  \break
  \mark \markup { \bold { [DO YOU LOVE ME] } }
  \repeat percent 3 { f,4 f8 a8~\4 a8 a8\4 c4 | bf4 bf8 c8~ c8 c8 g4 | }
  \bar "||"
  
  %% 13
  bf4 bf8 d8~\3 d8\3 d8\3 f4 | bf,4 bf8 df8~ df8 df8 f4 \bar "||"
  
  %% 16
  \break
  \repeat percent 3 { c4. c8~ c8 c8 c4 | }
  c4-. r4 r4 c4-. \bar "||"
  
  %% 20
  \break
  \mark \markup { \bold { [WORK WORK] } }
  \repeat percent 3 { f,4 f8 a8~\4 a8 a8\4 c4 | bf4 bf8 c8~ c8 c8 g4 | }
   f4-. r4 r2 | r8 c'8 c8 c8 c8 c8 c8 c8 \bar "||"
  
  %% 28
  \break
  \mark \markup { \bold { [I CAN MASH POTATO] } }
  \repeat volta 2 { 
    \bar ".|:"
    \repeat percent 2 { f,4 f8 a8~\4 a8 a8\4 c4 | bf4 bf8 c8~ c8 c8 g4 | }
  }
  
  %% 32
  \break
  \mark \markup { \bold { [TELL ME] } }
  \repeat percent 3 { c4. c8~ c8 c8 c4 | }
  c4-. c8 c8 c4-. r4 \bar "||"
  
  %% 36
  \break
  \mark \markup { \bold { [DO YOU LOVE ME] } }
  \repeat percent 3 { f,4 f8 a8~\4 a8 a8\4 c4 | bf4 bf8 c8~ c8 c8 g4 | }
  bf4 bf8 d8~\3 d8\3 d8\3 f4 | bf,4 bf8 df8~ df8 df8 f4 \bar "||"
  
  %% 44
  \break
  \repeat percent 3 { c4. c8~ c8 c8 c4 | }
  c4-. r4 r4 c4-. \bar "||"
  
  %% 48
  \break
  \mark \markup { \bold { [WORK WORK] } }
  \repeat volta 2 {
    \bar ".|:"
    \repeat percent 3 { f,4 f8 a8~\4 a8 a8\4 c4 | bf4 bf8 c8~ c8 c8 g4 | }
    \break f4-. r4 r2 | r8 c'8 c8 c8 c8 c8 c8 c8
  }
  
  %% 56
  \break
  \mark \markup { \bold { [I CAN MASH POTATO] } }
  \repeat volta 2 { 
    \bar ".|:"
    \repeat percent 2 { f,4 f8 a8~\4 a8 a8\4 c4 | bf4 bf8 c8~ c8 c8 g4 | }
  }
  
  %% 60
  \break
  \mark \markup { \bold { [TELL ME] } }
  \repeat percent 3 { c4. c8~ c8 c8 c4 | }
  c4-. c8 c8 c4-. r4 \bar "||"
  
  \break
  \mark \markup { \bold { [DO YOU LOVE ME] } }
  \repeat volta 3 {
    \bar ".|:"
    \repeat percent 3 { f,4 f8 a8~\4 a8 a8\4 c4 | bf4 bf8 c8~ c8 c8 g4 | }
    \bar "||" 
    \break
    bf4 bf8 d8~\3 d8\3 d8\3 f4 | bf,4 bf8 df8~ df8 df8 f4
    \repeat percent 3 { c4. c8~ c8 c8 c4 | }
  } \alternative {
    { c4-. c8 c8 c4-. r4 | }
    { \break c-. r8 f,8->~ f2~ | f1 \fermata | f4-. r4 r2 \bar "|." }
  }
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  
  \time 6/4
  f1. | bf1. | c1. | d1.:min |
  
  %% 5
  \time 4/4
  c1:7 | s1 | s1 |
  
  %% 8
  f2 f2/a | bf2 c2 | f2 f2/a | bf2 c2 | f2 f2/a | bf2 c2 |
  
  %% 14
  bf1 | bf1:min |
  
  %% 16
  c1 | s1 | s1 | s1 |
  
  %% 20
  f2 f2/a | bf2 c2 | f2 f2/a | bf2 c2 | f2 f2/a | bf2 c2 |
  
  %% 26
  f1 | c1:7 
  
  %% 28
  \repeat volta 2 { 
    f2 f2/a | bf2 c2 | f2 f2/a | bf2 c2 |
  }
  
  %% 32
  c1 | s1 | s1 | s1 |
  
  %% 36
  f2 f2/a | bf2 c2 | f2 f2/a | bf2 c2 | f2 f2/a | bf2 c2 |
  bf1 | bf1:min |

  %% 44
  c1 | s1 | s1 | s1 |
  
  %% 48
  \repeat volta 2 {
    f2 f2/a | bf2 c2 | f2 f2/a | bf2 c2 | f2 f2/a | bf2 c2 |
    f1 | c1:7   
  }
  
  %% 56
  \repeat volta 2 { 
    f2 f2/a | bf2 c2 | f2 f2/a | bf2 c2 |
  }
  
  %% 60
  c1 | s1 | s1 | s1 |
  
  %% 64
  \repeat volta 3 {
    f2 f2/a | bf2 c2 | f2 f2/a | bf2 c2 | f2 f2/a | bf2 c2 |
    bf1 | bf1:min |
    c1 | s1 | s1 |
  } \alternative {
    { s1 }
    { c4 s8 f4:9 s4 s8 | s1 | s1 | }
  }
  
  

  
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
