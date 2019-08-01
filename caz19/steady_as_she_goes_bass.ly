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
}

mBreak = {
  %% \break
}

cBreak = { \break }

global = {
  \time 4/4
}

my_notes = \relative c {
  \clef "bass_8"
  \key b \major
  
   r1 | r1 | r1 | r1 |
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
   \mark \markup{First Verse}
   b4 r8 bf8 fs4 r8 b |
   a4 r8 gs8 e8 fs8 gs8 a8 |
   b4 r8 bf8 fs4 r8 b8 |
   a4 r8 a8 fs'8 e8 d8 cs8 |

  \break
  \mark \markup{Chorus}
   
  \repeat percent 2 { 
    b4 b8 cs8 fs,8 fs8 fs8 b8 |
    a4 a8 b8 e,8 fs8 gs8 a8 |
  }
  \break
 
  \mark \markup{Second Verse}
  b4 r8 bf8 fs4 r8 b8 | 
  a4 r8 gs8 e8 fs8 gs8 a8 |
  b4 r8 bf8 fs4 r8 b8 |
  a4 r8 a8 fs'8 e8 d8 cs8 |
  b4 r8 bf8 fs4 r8 b8 |
  a4 r8 gs8 e8 fs8 gs8 a8 |
  b4 r8 bf8 fs4 r8 b8 | 
  a4 r8 a8 fs'8 e8 d8 cs8 |

  \break
  \mark \markup{Chorus}
   
  \repeat percent 2 { 
    b4 b8 cs8 fs,8 fs8 fs8 b8 |
    a4 a8 b8 e,8 fs8 gs8 a8 |
  }
  \break

  \break
  \mark \markup{Bridge}
  g'4\2 g4\2 g8\2  d8\3 g8\2 gs8\2 |
  a4\2 a4\2 a8\2 e8\3 a4\2 |
  b4\2 b8\2 b8\2 b8\2 b8\2 b8\2 a8\2 | 
  b8\2 b8\2 b8\2 b8\2 b8\2 a8\2 g8\2 fs8\2 |
  g4\2 g4\2 g8\2  d8\3 g8\2 gs8\2 | a4\2 a4\2 a8\2 e8\3 a4\2 |
  a4\2 a4\2 a8\2 e8\3 a4\2 |
  e4\3 e4\3 e8\3 e8\3 e8\3 \glissando b'8\3 |
  e8\2 b4\3 (e8\2~ e8\2) b8\3 a4\3 \glissando |
  
  r1
  
  \break
  \mark \markup{Outro}
  \repeat percent 4 {
    b,4 b8 b8 fs8 fs8 fs8 fs8 |
    a8 a8 a8 a8 e8 e8 e8 e8 |
  }
  \break
  b'1 | ~b1 | ~b1 | ~b1 | ~b1 | ~b1 |
  r1 | r1 \bar "|."
}

my_music = <<
  \new Staff {
    \my_notes
  }
  \new TabStaff
    \with { stringTunings = #bass-tuning } 
  { 
    %%\set TabStaff.minimumFret = #3f
    %%\set TabStaff.restrainOpenStrings = ##t
    \global
    \my_notes
  }
>>
  
\score {
  \my_music
  \layout {
    \context {
      \Score \override StringNumber #'stencil = ##f 
    }
  }
}
