% LilyBin

% Unchain My Heart - Ray Charles

\version "2.18.0"

\paper { 
  left-margin = 1.0\in
  right-margin = 0.5\in
}

symbols = \relative c {
  \clef "bass_8"
  \key b \major
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \tempo 4 = 155

  \partial 8 g8 \mp |

  gis4-.-> b8 cis8-.-> r8 b8  gis8 fis8 | gis4-.-> r4 r4. \mf \cresc g8 |
  gis4-.-> b8 cis8-.-> r8 b8  gis8 fis8 \f | gis4-.-^ r4 r2 |
  \break

  \repeat volta 2 {

    %% 5
    \mark \markup { \bold {[A]} \italic {(Vocals)} }
    gis4-.-> \mf b8 cis8-.-> r8 b8  gis8 fis8 | gis4-.-> r4 r4. g8 |
    gis4-.-> b8 cis8-.-> r8 b8  gis8 fis8 | gis4-.-> r4 r4. gis8 |
    %%\break
    
    %% 9
    e4-.-> b'8 cis8-.-> r8 b8  gis8 fis8 | e4-.-> r4 r4. g8 | 
    gis4-.-> \mf b8 cis8-.-> r8 b8  gis8 fis8 | gis4-.-> r4 r2 |
    \break

    %% 13
    \mark \markup { \bold {[B]} }
    e4-> b'4 cis2 | gis4.-> b8 ~b8 b8 gis4-. | 
    e4-> b'4 cis2 | gis4.-> b8 ~b8 b8 gis4-. |
    e4-.-> \cresc b'8 cis8-> r8 b8  gis8 e8 |
    %%\break
    
    %% 18
    dis4-> ais'8 b8-> ~b8 ais8 g8 dis8 | 
    gis4-.-> \f \< b8 cis8-.-> r8 b8  gis8 fis8 \! |
    
  } \alternative {
    { gis4-.-^ r4 r2 | }
    { gis4-.-^ r4 r2 | \bar "||" }
  }
  \break
  
  %% 22
  \mark \markup { \bold {[C]} \musicglyph #"scripts.segno" }
  cis4.-> gis8-> ~gis4 gis8 gis8 | cis,4.-> gis'8-> ~gis4 cis4 |
  gis4.-> gis8-> ~gis4 dis'8-> dis8 |
  gis,4.-> dis'8 ~dis8 dis8 gis,8-> gis8 |
  %%\break
  
  %% 26
  cis4.-> gis8-> ~gis4 gis8 gis8 | cis,4.-> e8-> ~e4 e4 |
  dis4.-> ais'8-> ~ais4 dis8-> dis,8-.-^| r1 \bar "||" |
  \break
  
  %% 30
  \mark \markup { \bold {[D]} }
  gis4-.-> \mf b8 cis8-.-> r8 b8  gis8 fis8 | gis4-.-> r4 r4. f8 | 
  fis4-.-> b8 cis8-.-> r8 b8  gis8 fis8 |
  %%\break
 
  %% 33
  gis4-.-> r4 r4. gis8 |
  e4-.-> b'8 cis8-.-> r8 b8 gis8 fis8 |
  e4-.-> r4 r4. g8 | 
  gis4-.-> b8 cis8-.-> r8 b8 gis8 fis8 |
  %%\break
  
  %% 37
  gis4-.-> r4 r2 \bar "||" |
  \break %% NEW
  \mark \markup { \bold {[E]} }
  cis2.-> cis4 | gis2-> r8 b8->  gis8 b8 | cis2.-> cis4 |
  %%\break
  
  %% 41
  gis2-> r2 | 
  e4-.-> \cresc b'8 cis8-> r8 b8  gis8 e8 |
  dis4-> ais'8 b8-> ~b8 ais8 g8       
      \mark \markup { 
          \italic { "To Coda" } 
          \musicglyph #"scripts.coda" }  
      dis8 \bar "||" |
   \break
   
   %% 44
   gis4-.-> \f \< b8 cis8-.-> r8 b8  gis8 fis8 \! |
   gis4-.-^ r4 r2 \bar "||" |
   \break %% NEW
   \mark \markup { \bold {[F]} \italic {(Sax Solo)} }
   gis4-.-> \mf b8 cis8-.-> r8 cis8->  b8 gis8 |
   cis,4-.-> gis'8 cis8-.-> r8 cis8->  b8 fis8 |
   %%\break
   
   %% 48
   gis4-.-> b8 cis8-.-> r8 cis8->  b8 gis8 |
   cis,4-.-> gis'8 cis8-.-> r8 cis8->  b8 gis8 |
   cis4-.-> r8 e,8-> r4 gis8-> gis8 |
   cis,4-.-> r8 e8 r4 gis8-> g8 | 
   gis4-.-> b8 cis8-.-> r8 cis8->  b8 g8 | 
   %%\break
   
   %% 53
   gis4-.-> r8 b8-> r8 b8->  gis8 fis8 |
   \break %% NEW
   \mark \markup { \bold {[G]} } 
     e4.-> e8 ~e4 e8 e8 |
   gis4.-> b8-> ~b4 gis8 fis8 |
   e4.-> gis8-> ~gis8 gis8 e4 |
   %%\break
   
   %% 57
   gis4.-> b8-> ~b8 b8 gis4-. |
   e4.-> \cresc gis8-> ~gis4 e8-> e8 |
   dis4.-> dis'8 ~dis8 cis8-> ais8 dis,8 |
   gis4-.-> \< b8 cis8-.-> r8 b8  gis8 fis8 \! |
   gis4-.-^ r4 
     \mark \markup { \italic { "D.S. al Coda" } }  
     r2 \bar "||" |
   \break
   
   %%62
   \mark \markup { \italic { "Coda" } \musicglyph #"scripts.coda" } 
   \repeat volta 2 {
     gis4-> b8 cis8-> ~cis8 b8 gis8 fis8 |
     gis2.-> r8 g8 |
     \break
   } \alternative {
     %% 64
     { gis4-> \mf b8 cis8-> ~cis8  b8  gis8 fis8 | 
       gis2.-> r8 g8 | }
     { gis4-.-> \f \< b8 cis8-.-> r8 b8  gis8 fis8 \! |
       gis4-.-^ r4 r2  | }
   }

}

these_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  \partial 8 s8 |

  r1 | s | s | s |

  \repeat volta 2 {
    %% 5
    gis1:m6 | s | s | s
    %% 9
    e1:9 | s | gis:m6 | s
    %% 13
    cis1:m6/e | gis:m6 | cis:m6/e | gis:m6 | e:9 |
    %% 18
    dis1:9 | r |
  } \alternative {
    { s1 | }
    { s1 | }
  }
  %% 22
  cis1:m6 | s | gis:m6 | s |
  %% 26
  cis1:m6 | e:9 | dis:7 | s |
  %% 30
  gis1:m6 | s | s
  %% 33 
  s1 | e:9 | s1 | gis:m6 |
  %% 37
  s1 | cis:m6 | gis:m6 | cis:m6 |
  %% 41
  gis:m6 | e:9 | dis:9 |
  %% 44
  r1 | s | gis1:m6 | cis:7 |
  gis1:m6 | cis:7 | cis:m7 | s1 | gis:m6  |
  %% 53
  s1 | cis1:m6/e | gis:m6 | cis:m6/e |
  %% 57
  gis1:m6 | e:9 | dis:9 | r | s |
  %% 62
  \repeat volta 2 {
     gis2:m cis4.:m7 gis8:m | s1 |
  } \alternative {
    %% 64
    { s2 cis4.:m7 gis8:m | s1 | }
    { s2 cis4.:m7 gis8:m | s1 | }
  }
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
      \set TabStaff.minimumFret = #3
      \set TabStaff.restrainOpenStrings = ##t
      \symbols
    }
  >>
  \layout {
    \context {
      \Score
    }
  }
  \midi {}
}

