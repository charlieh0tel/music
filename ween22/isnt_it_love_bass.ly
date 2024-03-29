% LilyBin

\version "2.22.1"
\include "english.ly"
\include "../lib/click.ly"


\header {
  piece = \markup { \fontsize #4 \bold "Isn't It Love?" }
  opus = \markup { \italic "R. Sugar, J. Fauntleroy, & E. Swaray" }
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
  \tempo "" 4 = 84
  \time 4/4
  \compressEmptyMeasures
  %\compressFullBarRests
  % \override MultiMeasureRest.expand-limit = #2
}

my_notes = \relative c {
  \clef "bass_8"
  \key bf \major
  
  R1*13 |
  \mark \markup { \small \italic "Doesn't this have a name?"}  r2. \afterGrace bf4\3 \glissando { \hideNotes bf,8 \unHideNotes } \bar "||"
  \sbreak
  \xNote bf4 r8 bf16 bf d8 f\3 a g | 
  r4 r8 g16 g f8\3 d bf d |
  \cbreak
  r4 r8 bf16 bf d8 f\3 a g | 
  r4 r8 g16 g bf8\2 f\3 d c\4 |
  \cbreak
  bf16 bf bf bf bf bf bf bf a a a a a a a a |
  g16 g g g g g g g a a a a a a a a |
  \cbreak
  bf16 bf bf bf bf bf bf bf c\4 c\4 c\4 c\4 c\4 c\4 c\4 c\4 |
  d16 d d d d d d d d d d d bf4~ | bf1 
  \bar "|."
}

my_chords = \chordmode { }

ticktock = \drummode {
  \clickTrackDuring 4/4 \my_notes
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
    \set TabStaff.minimumFret = 3
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
