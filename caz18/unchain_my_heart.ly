\% LilyBin

% Unchain My Heart - Ray Charles

\version "2.16.2"

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
}

symbols = \relative c, {
  \clef "bass_8"
  \key b \major
  \time 4/4
  \tempo 4 = 155

  \partial 8 g'8 \mp |

  gis4-.-> b8 cis8-.-> r8 b8 \noBeam gis8 fis8 | gis4-.-> r4 r4. \mf \cresc g8 |
  gis4-.-> b8 cis8-.-> r8 b8 \noBeam gis8 fis8 \f | gis4-.-> r4 r2 |
  \break

  \repeat volta 2 {

    %% 5
    \mark \markup { \bold {[A]} \italic {(Vocals)} }
    gis4-.-> \mf b8 cis8-.-> r8 b8 \noBeam gis8 fis8 | gis4-.-> r4 r4. g8 |
    gis4-.-> \mf b8 cis8-.-> r8 b8 \noBeam gis8 fis8 | gis4-.-> r4 r4. gis8 |
    \break
    
    %% 9
    e4-.-> b'8 cis8-.-> r8 b8 \noBeam gis8 fis8 | e4-.-> r4 r4. g8 | 
    gis4-.-> \mf b8 cis8-.-> r8 b8 \noBeam gis8 fis8 | gis4-.-> r4 r2 |
    \break

    %% 13
    \mark \markup { \bold {[B]} \italic {(Vocals)} }
    e4-> b'4 cis2 | gis4.-> b8 ~b8 b8 gis4-. | 
    e4-> b'4 cis2 | gis4.-> b8 ~b8 b8 gis4-. |
    e4-.-> b'8 cis8-> r8 b8 \noBeam gis8 e8 |
    \break
    
    %% 18
    dis4-> ais'8 b8-> ~b8 ais8 g8 dis8 | 
    gis4-.-> b8 cis8-.-> r8 b8 \noBeam gis8 fis8 |
    
  } \alternative {
    { fis4-.-> r4 r2 | }
    { fis4-.-> r4 r2 | }
  }
  \break
}

these_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  \partial 8 s8 |

  r1 | s1 | s1 | s1 |

  \repeat volta 2 {
    %% 5
    gis1:m6 | s | s | s
    %% 9
    e:9 | s | gis:m6 | s
    %% 13
    cis:m6/e | gis:m6 | cis:m6/e | gis:m6 | e:9 |
    %% 18
    dis:9 | r |
  } \alternative {
    { s1 | }
    { s1 | }
  }
  \break
}

\header {
  piece = \markup { \fontsize #4 \bold "Unchain My heart" }
  opus = \markup { \italic "Ray Charles" }
}
  
\score {
  <<
    \new ChordNames \these_chords
    \new Staff \symbols
    \new TabStaff
    \with { stringTunings = #bass-tuning } 
    { 
      \set TabStaff.minimumFret = #1
      \set TabStaff.restrainOpenStrings = ##t
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
