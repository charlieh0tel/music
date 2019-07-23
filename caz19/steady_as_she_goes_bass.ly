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
  \clef "treble_8"
  \key b \major
  
  b4 r8 as8 fs4 r8 b8 |
  a4 r8 gs8 e4 fs4 |
  b4 r8 as8 fs4 r8 b8 |
  a4 r8 gs8 e4 fs4 |
  
  \break
  ds''2 ds2 | cs2 b2 | ds2 ds2 | cs2 b2 |
  
  \clef "bass_8"
  \break
  b,,4 r8 as8 fs4 r8 b8 |
  a4 r8 gs8 e4 fs4 |
  b4 r8 as8 fs4 r8 b8 |
  a4 r8 gs8 e4 fs4 |
  
  \break
  ds'2 ds2 | cs2 b2 | ds2 ds2 | cs2 b2 |
  
  
  
  
  
}

my_music = <<
  \new Staff {
    \global
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
