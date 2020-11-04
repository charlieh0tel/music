% LilyBin

\version "2.18.0"
\include "english.ly"

% If swing needed
%#(load "../scm/swing.scm")

\header {
  piece = \markup { \fontsize #4 \bold "You Won't See Me" }
  opus = \markup { \italic "Beatles" }
}

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 1\in
  bottom-margin = 1\in
}

global = {
  % \tempo "" 4 = xx
  % \time 4/4
  % \compressFullBarRests
  % \override MultiMeasureRest.expand-limit = #2
}

my_notes = \relative c {
  \clef "bass_8"
  \key a \major
  %% intro
  \mark \markup { Intro }
  d,8 fs a a,~ a2~ | a4 gs' fs e \bar ".|:"
  
  %% verse
  \mark \markup { Verse }
  a,8 cs e a~ a e cs e | b ds fs\3 b\2~ b a gs fs\3 | d fs a d~ d a fs a | a, cs e a~ a e cs a' |
  a, cs e a~ a e d cs | b ds fs b~ b a gs fs | d fs a d~ d cs b a | a, cs e a~ a4 r4 |
  a,8 cs e a~ a a cs, e | d fs a d~ d cs b a | d, d a' d~ d c b a | a, cs e a~ a fs e cs |
  a cs e a~ a cs, e a | b, ds fs b~ b4 r4 \bar ":.|.:" \break
  d,8 fs a a,~ a2 | a'4 gs fs e \bar ":|." \break
  
  %% middle 8
  \pageBreak
  \mark \markup { Middle 8 }
  b4 b4 b8 b8 b4 | d4 d4 d8 d8 d4 | d4 d4 d8 d8 d4 | a'4 a4 a8 a8 a4 | \break
  b,4 b4 b8 b8 b4 | b4 b4 b8 b8 b8 b8 | e4 e4 e8 e8 e4 | e4 e4 e8 e8 e4 |
  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  %% intro
  d2 a2 | a1 |
  
  %% verse
  a1 | b:7 | d | a |
  a | b:7 | d | a | 
  a:7 | d | d:min | a |
  a | b:7 | d2 a2 | a1 |
  
  %% middle 8
  b:min | d:min | d:dim | a |
  b:7 | b:7 | d/e | e:7 |
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
    \set TabStaff.minimumFret = #3
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
