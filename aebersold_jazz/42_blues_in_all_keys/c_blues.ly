% Jamey Aebersold Jazz
% Volume 42: Blues in All Keys
% 3. C Blues

\version "2.16.2"

% #(load "../scm/swing.scm")

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
}

these_notes = \relative c, {
  \clef "bass_8"
  \key c \major
  \time 4/4
  \tempo 4 = 96

  \mark \markup { \bold {[1]} }
  c4 d4 ees4 e4 | f8. c16 a4 bes4 b4 | c4 e,4 g8. a16 fis4 |
    g8. a16 b4 \times 2/3 { c8. d16 dis8 } \times 2/3 { e8 c8 fes,8 } |
  \break
  f4 a4 c8. d16 e4 | f4 c4 f4 \times 2/3 { a8 g8 b,8 } |
    c8. (e,16) e4 g8. b16 \times 2/3 { c8 d8 dis8 } | e4 e,4 a4 cis4 |
  \break
  d8. d16 e4 f4 fis4 | g4 d4 g,4 \times 2/3 { g'8 d8 dis8 } |
    e4 e,4 a4 cis4 | d4 fis4 g4 b8. g16 \bar "||"
  \break
  
  \mark \markup { \bold {[2]} }
  c8. g16 e4 g4 c,8. e,16 | f4 c'4 f,4 b4 | c8. e,16 e4 f4 fis4 | 
    g4 gis4 \times 2/3 { a8 ais8 b8 } c8. e16 |
  \break
  f8. c16 a4 g4 c4 | f,4 c'4 f,8. a16 b4 | c4 g4 c4 g4 | e8. f16 fis4 a4 cis4 |
  d4 a8. cis16 d4 fis4  | g8. d16 d4 g4 f8. d16 | e4 e,4 a4 a8. cis16 |
    d4 d8. fis16 g4 des4 \bar "||"
  \break

  \mark \markup { \bold {[3]} }
  c8. g'16 c4 des8. g,16 e4 | f8. c16 a4 bes4 b4 | c4 g'4 e4 c4 |
    g'4 \times 2/3 { g8 a8 b8 } c4 e,4 |
  \break
  f8. c16 a4 g4 c4 | f,4 c'4 f,8. a16 b4 | c4 g4 c4 g4 | e4 e4 a4 a8. \xNote { cis16 }  |
  \break
  d4 a8. cis16 d4 f8. fis16 | g4 cis,16 d8. fis16 g8. f8. d16 |
    e4 e,4 a8. a16 cis4 | d4 f8. d16 fis8. g16 b4 \bar "||"
  \break
  
  \mark \markup { \bold {[4]} }
  c4 g4 fis8. d16 e4 | f4 c4 a8. bes16 b4 | c8. e,16 g4 a8. e16 fis4 | g4 b4 d4 e4 |
  \break
  f8. f16 a,4 g4 c4 | f,4 c'4 f,8. a16 b4 | c4 g4 c4 g4 | e4 e4 a4 a8. cis16 |
  \break
  d4 fis,4 a4 aes4 | g4 d'8. fis16 g4 f8. d16 | e4 gis4 a8. ees16 cis4 | d4 f8. d16 g4 b8. g16 \bar "||" |
  \break
  
  \mark \markup { \bold {[5]} }
  c8. c,16 cis4 d8. d16 e4 | f8. c16 a4 bes4 b4 | c8. g16 e4 a4 fis4 | g4 b4 c4 \times 2/3 { e8 c8 e8 } |
  \break
  f8. c16 a4 \times 2/3 { g8 a8 b8 } \times 2/3 { c8 g8 ges8 } | f4 c'4 a8. f16 f8. b16 | c4 g4 c4 g4 |
    e4 e4 a4 a8. cis16 |
  \break
  d4 f4 a8. cis16 \times 2/3 { d8 d,8 fis8 } | g4 (d4) g4 f8. d16 | e4 e,4 a4 a8. cis16 |
    d4 d8. fis16 g4 \times 2/3 { b8 g8 des8 } \bar "||" |
  \break
  
  \mark \markup { \bold {[6]} }
  c4 c'4 g8. d16 e4 | f8. f16 a,4 bes4 b4 | c4 e,4 g8. e16 fis4 | g4 b4 c4 e8. c16 |
  \break
  f8. f16 a,4 c4 f,4 | fis4 fis4 a4 fis8. b16 | c4 c8. cis16 d4 d8. dis16 | e4 e4 ees4 ees8. cis16 |
  \break
  d8. d16 e4 f4 fis4 | g4 \acciaccatura cis,8 d4 g4 \times 2/3 { d8 d8 dis8 } |e4 e,4 a8. cis'16 g'4 |
    fis8. d,16 d4 (g4) des4 \bar "||" |
  \break
  
  \mark \markup { \bold {[7]} }
  c8. e,16 g4 c4 g'8. e,16 | f8. f16 a4  bes4 b4 | c4 e,4 g8. e16 fis4 |
    g4 b4 \times 2/3 { c8 d8 dis8 } \times 2/3 { e8 c8 ges8 } |
  \break
  f4 c'4 f,4 c'8. f,16 | fis4 c'4 fis,4 c'8. fis,16 | c'4 c4 d4 d8. dis16 | e4 e4 ees4 ees8. d16 |
  \break
  d8. d16 e4 f4 fis4 | g4 \acciaccatura cis,8 d4 g,4 d'8. d16 | e4 e,4 a4 a8. cis16 |
    d4 f8. d16 g4 b8. g16 \bar "||" |
  \break
  
  
}

these_chords = \chordmode {
  %1
  c1:7 | f1:7 | c1:7 | g2:min c2:7 |
  f1:7 | f1:7 | c1:7 | e2:m7.5- a2:7.9 |
  d1:min | g1:7 | e2:min a2:7 | d2:min g2:7 |

  %2
  c1:7 | f1:7 | c1:7 | g2:min c2:7 |
  f1:7 | f1:7 | c1:7 | e2:m7.5- a2:7.9 |
  d1:min | g1:7 | e2:min a2:7 | d2:min g2:7 |

  %3
  c1:7 | f1:7 | c1:7 | g2:min c2:7 |
  f1:7 | f1:7 | c1:7 | e2:m7.5- a2:7.9 |
  d1:min | g1:7 | e2:min a2:7 | d2:min g2:7 |

  %4
  c1:7 | f1:7 | c1:7 | g2:min c2:7 |
  f1:7 | f1:7 | c1:7 | e2:m7.5- a2:7.9 |
  d1:min | g1:7 | e2:min a2:7 | d2:min g2:7 |

  %5
  c1:7 | f1:7 | c1:7 | g2:min c2:7 |
  f1:7 | f1:7 | c1:7 | e2:m7.5- a2:7.9 |
  d1:min | g1:7 | e2:min a2:7 | d2:min g2:7 |

  %6
  c1:7 | f1:7 | c1:7 | g2:min c2:7 |
  f1:7 | fis1:7dim | c2:maj7 d2:min | e2:min ees2:min |
  d1:min | g1:7 | e2:min a2:7 | d2:min g2:7 |

  %7
  c1:7 | f1:7 | c1:7 | g2:min c2:7 |
  f1:7 | fis1:7dim | c2:maj7 d2:min | e2:min ees2:min |
  d1:min | g1:7 | e2:min a2:7 | d2:min g2:7 |
  
}

\header {
  piece = \markup { \fontsize #4 \bold "3. C Blues" }
  opus = \markup { \italic "Jamey Aebersold Jazz Volume 42" }
}
  
\score {
  <<
    \new ChordNames \these_chords
    \new Staff \these_notes
    \new TabStaff
    \with { stringTunings = #bass-tuning } 
    { 
      %%\set TabStaff.minimumFret = #1
      %%\set TabStaff.restrainOpenStrings = ##t
      \these_notes
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
