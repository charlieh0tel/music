% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "The Tears of a Clown (Basson Riff)" }
  opus = \markup { \italic "The Miracles" }
}

\paper { 
  left-margin = 1.0\in
  right-margin = 0.5\in
}

mBreak = { 
  %%\break 
}
cBreak = {
  \break
}

global = {
  \time 4/4
  \tempo 4 = 130
}

my_notes = \relative c, {
  \clef "bass_8"
  
  \key f \major

  \break
  \repeat unfold 4 { r1 }
  
  \break
  c'8\3 g8\4 d'\3 g,8\4 e'8\2 g,8\4 c8\3 g8\4 | 
  c16\3 d16\3 e16\2 g16\2 c16\1 g16\2 e16\2 d16\3 c8\3 r8 c,8\4 g'8\4 |
  c8\3 g8\4 d'8\3 g,8\4 e'8\2 g,8\4 c8\3 g8\4 | 
  c16\3 d16\3 e16\2 g16\2 c16\1 g16\2 e16\2 d16\3 c8\3 r4. |
  
  \break
  \repeat unfold 4 { r1 }
 
  \break
  c,8 g8 d'8 g,8 e'8 g,8 c8 g8 | 
  c16 d16 e16 g16 c16 g16 e16 d16 c8 r8 c8 g8 |
  c8 g8 d'8 g,8 e'8 g,8 c8 g8 | 
  c16 d16 e16 g16 c16 g16 e16 d16 c8 r4. |
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  s1 | s1 | s1 | s1 |
  c1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
  c1 | s1 | s1 | s1 |
}

ticktock = \drummode {
  \repeat unfold 16 {
    hiwoodblock 4 lowoodblock lowoodblock lowoodblock
  }
}


my_music = <<
  \new ChordNames = Chords {
    \set ChordNames.midiInstrument = "percussive organ"
    \set ChordNames.midiMaximumVolume = #0.2
    \set chordChanges = ##t
    \global
    \my_chords
  }
  \new Staff {
    \set Staff.midiInstrument = #"electric bass (finger)"
    \set staff.midiMinimumVolume = #0.5
    \set Staff.midiMaximumVolume = #0.9
    \global
    \my_notes
  }
  \tag #'scoreOnly
  \new TabStaff
    \with { stringTunings = #bass-tuning } 
  { 
    \set TabStaff.minimumFret = #1
    \set TabStaff.restrainOpenStrings = ##t
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

