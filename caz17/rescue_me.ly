% LilyBin

% Rescue Me - Fontella Bass

\version "2.16.2"

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
}

symbols = \relative c, {
  \clef "bass_8"
  \key a \major
  \time 4/4
  \tempo 4 = 125
  a'8-> \mp fis8 e8 fis8 a4-> fis8 e8 |
  a4-> a8 fis8 a8-.-> e8 fis8 a8->~|
  a8 fis8 \cresc e8 fis8 a4-> fis8 e8 |
  a4-> a8 fis8 a8-.-> e8 fis8 a8-.->~|
  \break

  %% 5
  a8 \mf fis8 e8 fis8 a4-> fis8 e8 |
  a4-> a8 fis8 a8-.-> fis8 e4-. |
  d'8-> \f \< cis4-> b8->~b8 a4-> \! e8~|
  e8 \fp \< e8 e8 e8 e8 e8 e8 gis8 \! |
  \break

  %% 9
  \mark \markup { \bold {[A]} \italic {(Vocals)} }
  \repeat volta 2 {
  a8 \mf a8 fis8 e8 a8 a8 fis8 e8 |
  d8 d8 fis8 a8 d,8 d8 fis8 a8 |
  g8 g8 b,8 d8 g8 g8 b,8 d8 |
  e8 e8 b8 d8 e8 e8 b8 e8 |
  \break

  %% 13
  a8 a8 fis8 e8 a8 a8 fis8 e8 |
  d8 d8 fis8 a8 d,8 d8 fis8 a8 |
  g8 g8 b,8 d8 g8 g8 b,8 d8 |
  e8 e8 b8 d8 e8 e8 b8 e8 |
  \break

  %% 17
  \mark \markup { \bold {[B]} }
  a8 a8 fis8 e8 a8 a8 fis8 e8 |
  d8 d8 fis8 a8 d,8 d8 fis8 a8 |
  a8 a8 fis8 e8 a8 a8 fis8 e8 |
  d8 d8 fis8 a8 d,8 d8 fis8 a8 |
  \break

  %% 21
  a8 a8 fis8 e8 a8 a8 fis8 e8 |
  d8 d8 fis8 a8 d,8 d8 fis8 a8 |
  d8-> \< cis4-> b8->~ b8 a4-> \! \fp \< e8~ |
  \break
  
  %% 24
  } \alternative {
    { e8 \repeatTie e8 e8 e8 e8 e8 e8 gis8 \! | }
    { e8 \repeatTie \< e8 e8 e8 e8 e8 e4-. \! | }
  }
  \break
  
  %% 26
  \mark \markup { \bold {[C]} }
  a8-> \mp fis8 e8 fis8 a4-> fis8 e8 |
  a4-> a8 fis8 a8-.-> e8 fis8 a8->~|
  a8 \cresc fis8 \cresc e8 fis8 a4-> fis8 e8 |
  a4-> a8 fis8 a8-.-> e8 fis8 a8-.->~|
  \break
  
  %% 30
  a8 \mf fis8 e8 fis8 a4-> fis8 e8 |
  a4-> a8 fis8 a8-.-> fis8 e4-. |
  d'8-> \f \< cis4-> b8->~b8 a4-> \! e8~|
  e8 \fp \< e8 e8 e8 e8 e8 e8 gis8 \! |

  %% 34
  \mark \markup { \bold {[D]} }
  a8 \mf a8 fis8 e8 a8 a8 fis8 e8 |
  d8 d8 fis8 a8 d,8 d8 fis8 a8 |
  g8 g8 b,8 d8 g8 g8 b,8 d8 |
  e8 e8 b8 d8 e8 e8 b8 e8 |
  \break
  
  %% 38
  a8 a8 fis8 e8 a8 a8 fis8 e8 |
  d8 d8 fis8 a8 d,8 d8 fis8 a8 |
  g8 g8 b,8 d8 g8 g8 b,8 d8 |
  e8 e8 b8 d8 e8 e8 b8 e8 |
  \break
  
  %42
  \mark \markup { \bold {[E]} }
  \repeat volta 2 {
  a8 \mf a8 fis8 e8 a8 a8 fis8 e8 |
  d8 d8 fis8 a8 d,8 d8 fis8 a8 |
  a8 \mf a8 fis8 e8 a8 a8 fis8 e8 |
  d8 d8 fis8 a8 d,8 d8 fis8 a8 |
  \break
  
  a8 \mf a8 fis8 e8 a8 a8 fis8 e8 |
  d8 d8 fis8 a8 d,8 d8 fis8 a8 |
  d8-> \f \< cis4-> b8->~b8 a4-> \! e8~ \fp \cresc |
  \break
  
  } \alternative {
    { e8 \repeatTie e8 e8 e8 e8 e8 e8 gis8 \! | }
    { e8 \repeatTie \< e8 e8 e8 e8 e8 e8 gis8 \! | }
  }
  \break

  %% 51
  \mark \markup { \bold {[F]} }
  a8 \mf a8 fis8 e8 a8 a8 fis8 e8 |
  d8 d8 fis8 a8 d,8 d8 fis8 a8 |
  a8 a8 fis8 e8 a8 a8 fis8 e8 |
  d8 d8 fis8 a8 d,8 d8 fis8 a8 |
  \break
  
  %% 55
  a8 \mf a8 fis8 e8 a8 a8 fis8 e8 |
  d8 d8 fis8 a8 d,8 d8 fis8 a8 |
  d8-> cis4-> b8->~b8 a4-> \! e8~ |
  e8 \> e8 e8 e8 e8 e8 e8 gis8  \! |
  \break
  
  
  %% 59
  \mark \markup { \bold {[G]} }
  a8 \mp a8 fis8 e8 a8 a8 fis8 e8 |
  d8 d8 fis8 a8 d,8 d8 fis8 a8 | 
  a4 fis8 e8 a8 a8 fis8 e |
  d8 d8 fis8 a8 d,8 d8 fis8 a8 | 
  \break
  
  %% 63
  a8 a8 fis8 e a8 a8 fis8 e |
  d8 \< d8 c8 c8 b8 b8 d8 g \! |
  \break
  
  
  %% 65
  d'8-> cis4-> b8->~ b8 a4-> e8->~ |
  e8 \< e8 e8 e8 e8 e8 e8  gis8 \! |
  a4-. \ff a,4-. r2 |
}

these_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  a1 | d1:/a | a1 | d1:/a |
  a1 | d1:/a | d8 d4/cis d4/b d4/a e8:sus9 | e1:sus9 |
  \repeat volta 2 {
    a1 | d1:maj7 | g1 | e1:m7 | a1 : d1:maj7 | g1 | e1:m7 |
    a1 | d1 | a1 | d1 | a1 | d1 | d8 d4/cis d4/b d4/a e8:sus9 
  } \alternative {
    { s1 }
    { s1 }
  }
  a1 | d1:/a | a1 | d1:/a |
  a1 | d1:/a | d8 d4/cis d4/b d4/a e8:sus9 | e1:sus9 |
  a1 | d1:maj7 | g1 | e1:m7 | a1 : d1:maj7 | g1 | e1:m7 |
  \repeat volta 2 {
    a1 | d1 | a1 | d1 | a1 | d1 | d8 d4/cis d4/b d4/a e8:sus9 |
  } \alternative {
    { s1 }
    { s1 }
  }
  a1 | d1:/a | a1 | d1:/a |
  a1 | d1:/a | d8 d4/cis d4/b d4/a e8:sus9 | s1 |
  a1 | d1 | a1 | d1 | a1 | d1 | d8 d4/cis d4/b d4/a e8:sus9 | s1 |
  s4 a4 |
}

\header {
  piece = \markup { \fontsize #4 \bold "Rescue Me" }
  opus = \markup { \italic "Fontella Bass" }
}
  
\score {
  <<
    \new ChordNames \these_chords
    \new Staff \symbols
    \new TabStaff
    \with { stringTunings = #bass-tuning } 
    { 
      %%\set TabStaff.minimumFret = #1
      %%\set TabStaff.restrainOpenStrings = ##t
      \symbols
    }
  >>
  \layout {
    \context {
      \Score
      %%proportionalNotationDuration = #(ly:make-moment 1/8)
      %%voltaSpannerDuration = 
      %%  #(ly:make-moment 3/4)
    }
  }
  \midi {}
}
