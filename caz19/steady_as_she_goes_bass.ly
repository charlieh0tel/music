% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Steady As She Goes" }
  opus = \markup { \italic "The Raconteurs" }
}

\paper { 
  left-margin = 1.0 \in
  right-margin = 0.5 \in
  top-margin = 1.0 \in
  bottom-margin = 1.0 \in
}

mBreak = {
  %% \break
}

cBreak = { \break }

global = {
  \tempo "" 4 = 117
  \time 4/4
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
}

my_notes = \relative c {
  \clef "bass_8"
  \key b \major
  
   r1 _ \markup { \italic { Drums } } | r1 | r1 | r1 |
   \break
   \repeat percent 3 { 
     b,4 r8 bf8 fs4 r8 b8 | 
     a4 r8 gs8 e4 fs4 | 
   }
   \break
   b4 r8 bf8 fs4 r8 b8 
   a4 r8 gs8 e8 fs8 gs8 a8 |
   \break
   \repeat percent 2  { 
     b4 r8 bf8 fs4 r8 b8 |
     a4 r8 gs8 e4 fs4 | 
   }
   b4 r8 bf8 fs4 r8 b8 | 
   a4 r8 a8 fs'8 e8 d8 cs8 |

   \break
   \mark \markup{Verse}
   b4 r8 bf8 fs4 r8 b |
   a4 r8 gs8 e8 fs8 gs8 a8 |
   b4 r8 bf8 fs4 r8 b8 |
   a4 r8 a8 fs'8 e8 d8 cs8 \bar "||"

  \break
  \mark \markup{Refrain} 
  \repeat percent 2 { 
    b4 b8 cs8 fs,8 fs8 fs8 b8 |
    a4 a8 b8 e,8 fs8 gs8 a8 |
  }
  \bar "||"

  \break
  \mark \markup{Interlude}
  b4 r8 bf8 fs4 r8 b8 | 
  a4 r8 gs8 e8 fs8 gs8 a8 |
  b4 r8 bf8 fs4 r8 b8 |
  a4 r8 a8 fs'8 e8 d8 cs8 \bar "||"
  
  \mark \markup{Verse}
  b4 r8 bf8 fs4 r8 b8 | 
  a4 r8 gs8 e8 fs8 gs8 a8 |
  b4 r8 bf8 fs4 r8 b8 |
  a4 r8 a8 fs'8 e8 d8 cs8 \bar "||"
  
  \break
  \mark \markup { \musicglyph #"scripts.segno" Refrain }
  \repeat percent 2 { 
    b4 b8 cs8 fs,8 fs8 fs8 b8 |
    a4 a8 b8 e,8 fs8 gs8 a8 |
  }
  \bar "||"

  \break
  \mark \markup{Chorus}
  g'4\2 g4\2 g8\2 d8\3 g8\2 gs8\2 |
  a4\2 a4\2 a8\2 e8\3 a4\2 |
  b4\2 b8\2 b8\2 b8\2 b8\2 b8\2 a8\2 | 
  b8\2 b8\2 b8\2 b8\2 b8\2 a8\2 g8\2 fs8\2 |
  g4\2 g4\2 g8\2  d8\3 g8\2 gs8\2 | 
  a4\2 a4\2 a8\2 e8\3 a4\2 |
  e4\3 e4\3 e8\3 e8\3 e8\3 \glissando b'8\3 |
  e8\2 b4\3 (e8\2~ e8\2) b8\3 a4\3 \bar "||"
  
  
  \break  
  \mark \markup{Interlude}
  b,4 r8 bf8 fs4 r8 b8 | 
  a4 r8 gs8 e8 fs8 gs8 a8 |
  b4 r8 bf8 fs4 r8 b8 |
  a4 r8 a8 fs'8  e8 d8 cs8 ^\markup { \bold { To Coda \musicglyph #"scripts.coda" }} \bar "||"
  
  \mark \markup{Verse}
  b4 r8 bf8 fs4 r8 b8 | 
  a4 r8 gs8 e8 fs8 gs8 a8 |
  b4 r8 bf8 fs4 r8 b8 |
  a4 r8 a8 fs'8 e8 d8 cs8 |
  \repeat percent 2 {
    b4 r8 bf8 fs4 r8 b8 | 
    a4 r8 gs8 e8 fs8 gs8 a8 |
  }

  r1 |  r1 ^\markup { \bold { D.S. al Coda }}  % _\markup { \italic { So steady as ... }} 
  \bar "||"

  
  \mark \markup{\musicglyph #"scripts.coda" Verse}
  b4 r8 bf8 fs4 r8 b8 | 
  a4 r8 gs8 e8 fs8 gs8 a8 |
  b4 r8 bf8 fs4 r8 b8 |
  a4 r8 a8 fs'8 e8 d8 cs8 |
  \break
  \repeat percent 2 {
    b4 r8 bf8 fs4 r8 b8 | 
    a4 r8 gs8 e8 fs8 gs8 a8 |
  }
  r1 | r1 | 
  
  b'8\2 \p \< b8\2 b8\2 b8\2 b8\2 b8\2 b8\2 b8\2 |
  b8\2 b8\2 b8\2 b8\2 b8\2 b8\2 b8\2 fs8\3 \mf \! | % \bar "||"

  \break
  \mark \markup{Refrain}
  \repeat volta 2 {
    \repeat unfold 2 {
      b,4 b8 cs8 fs,8 fs8 fs8 b8 |
      a4 a8 b8 e,8 fs8 gs8 a8 |
    }
    }

\break
  \mark \markup{Outro}
  \repeat percent 4 {
    b4 b8 b8 fs8 fs8 fs8 fs8 |
    a8 a8 a8 a8 e8 e8 e8 e8 |
  }
  \break
  b'1~ | b~ | b~ | b~ | b~ | b |
  r1 | r1 \bar "|."
}

my_chords = \chordmode {
%   \set majorSevenSymbol = \markup { maj7 }
%   \powerChords
%   s1 | s1 | s1 | s1 |
%   b2:1.5 fs:1.5 | a2:1.5 e4:1.5 fs4:1.5 |
%   s1 | s1 | s1 | s1 |
%   b2:1.5 fs:1.5 | a2:1.5 e4:1.5 fs4:1.5 |
%   b2:1.5 fs:1.5 | a2:1.5 e4:1.5 fs4:1.5 |
%   s1 | s1 |
%   b2:1.5 fs:1.5 | a2:1.5 e4:1.5 fs4:1.5 |
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
