% LilyBin

% Nowhere To Run - Martha Reeves & The Vandellas

\version "2.16.2"

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
}

symbols = \relative c, {
  \clef "bass_8"
  \key g \major
  \time 4/4
  \tempo 4 = 130
  
  %% 1
  r1 | g'4. g8 g4. g8 | g4. g8 g8 e8 f8 fis8 |
  \break
  
  %% 4
  g4. g,8 b8 c4 d8~ | d4 e8 d8 f8 d8 fis8 g8 |
  g,4. g8 b8 c4 d8~ | d4 e8 d8 f8 d8 fis8 g8 |
  \break
  
  %% 8
  g,4. g8 b8 c4 d8~ | d4 e8 d8 f8 d8 fis8 g8 |
  g,4. g8 b8 c4 d8~ | d4 e8 d8 f8 d8 fis8 g8 |
  \break
  
  %% 12
  \mark \markup { \bold {[A]} }
  g,4. g8 b8 c4 d8~ | d4 e8 d8 f8 d8 fis8 g8 |
  g,4. g8 b8 c4 d8~ | d4 e8 d8 f8 d8 fis8 g8 |
  \break

  %% 16
  g,4. g8 b8 c4 d8~ | d4 e8 d8 f8 d8 fis8 g8 |
  g,4. g8 b8 c4 d8~ | d4 e8 d8 f8 d8 fis8 g8 |
  \break
  
  %% 20
  g4. g8 g4. g8 | g4 b,8 c8 d8 e8 f8 g8 | 
  g4. g8 g4 b,8 b8 | b4 c8 c8~ c8 d8 e8 fis8 |
  \break
  
  %% 24
  \mark \markup { \bold {[B]} }
  g4. g,8 b8 c4 d8~ | d4 e8 d8 f8 d8 fis8 g8 |
  g,4. g8 b8 c4 d8~ | d4 e8 d8 f8 d8 fis8 g8 |
  \break
  
  %% 28
  g,4. g8 b8 c4 d8~ | d4 e8 d8 f8 d8 fis8 g8 |
  g,4. g8 b8 c4 d8~ | d4 e8 d8 f8 d8 fis8 g8 |
  \break  

  %% 32
  a,4 a'4 g4 fis8 e8 | a,8 cis8 e,4 a8 b8 c8 cis8 |
  d4 e8 d8 fis4 a8 d,8 | d4 d4 c8 bes4 fis8 |
  \break
  
  %% 36
  \mark \markup { \bold {[C]} }
  \repeat volta 2 {
  g4. g8 b8 c4 d8~ | d8 d8 e8 d8 f8 d8 fis8 g8 |
  g,4. g8 b8 c4 d8~ | d8 d8 e8 d8 f8 d8 fis8 g8 |
  \break
  
  %% 40
  g,4. g8 b8 c4 d8~ | d8 d8 e8 d8 f8 d8 fis8 g8 |
  g,4. g8 b8 c4 d8~ | d8 d8 e8 d8 f8 d8 fis8 g8 |
  \break

  %% 44
  g4. g8 g4 b,8 b8 | b4 c8 c8~ c8 d8 e8 fis8 |
  g4. g8 g4. g8 | b,8 b4 c8~ c8 d8 e8 fis8 |
  
  %% 48
  \mark \markup { \bold {[D]} }
  g4. g,8 b8 c4 d8~ | d8 d8 e8 d8 f8 d8 fis8 g8 |
  g,4. g8 b8 c4 d8~ | d8 d8 e8 d8 f8 d8 fis8 g8 | 
  
  %% 52
  g,4. g8 b8 c4 d8~ | d8 d8 e8 d8 f8 d8 fis8 g8 |
  g,4. g8 b8 c4 d8~ | d8 d8 e8 d8 f8 d8 fis8 g8 |
  \break
  
  %% 56
  a,4 b4 cis4 e8 g8~ | g8 gis8 a8 e8~ e8 a,8 b8 cis8 |
  d4 e8 f8 fis4 a8 d,8 | d4 d4 c8 bes4 fis8 |
  }  %% repeat
  \break
  
  %% 60
  \mark \markup { \bold {[E]} }
  g4. g8 b8 c4 d8~ | d8 d8 e8 d8 f8 d8 fis8 g8 |
  g,4. g8 b8 c4 d8~ | d8 d8 e8 d8 f8 d8 fis8 g8 |
  \break
  
  %% 64
  \mark \markup { \bold {Vamp} }
  \repeat volta 2 {
  g,4. g8 b8 c4 d8~ | d8 d8 e8 d8 f8 d8 fis8 g8 |
  g,4. g8 b8 c4 d8~ | d8 d8 e8 d8 f8 d8 fis8 g8 |
  }  %% repeat
  \mark \markup { \bold {On Cue} }
  g,1 \fermata
  
}

these_chords = \chordmode {
  %% 1
  s1 | s1 | s1 |
  g1 | f2/g c2/g | g1 | f2/g c2/g | 
  g1 | f2/g c2/g | g1 | f2/g c2/g | 
  g1 | f2/g c2/g | g1 | f2/g c2/g | 
  g1 | f2/g c2/g | g1 | f2/g c2/g |
  g1 | s1 | s1 | s1 |
  g1 | f2/g c2/g | g1 | f2/g c2/g | 
  g1 | f2/g c2/g | g1 | f2/g c2/g |
  a1:7 | s1 | d1:7 | s2 c8:7 bes4.:7 |
  \repeat volta 2 {
  g1 | f2/g c2/g | g1 | f2/g c2/g |
  g1 | f2/g c2/g | g1 | f2/g c2/g |
  g1 | s1 | s1 | s1 |
  g1 | f2/g c2/g | g1 | f2/g c2/g |
  g1 | f2/g c2/g | g1 | f2/g c2/g |
  a1:7 | s1 | d1:7 | s2 c8:7 bes4.:7 |
  }
  g1 | f2/g c2/g | g1 | f2/g c2/g |
  \repeat volta 2 {
  g1 | f2/g c2/g | g1 | f2/g c2/g |
  }
  s1
}

\header {
  piece = \markup { \fontsize #4 \bold "Nowhere to Run" }
  opus = \markup { \italic "Martha Reeves & The Vandellas" }
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
}

\score {
  \unfoldRepeats
  <<
  \new ChordNames \these_chords
  \new Staff \symbols
  >>
  \midi {}
}