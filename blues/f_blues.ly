% F Blues
% Jerry Fusilli
%
% https://www.youtube.com/watch?v=yEE52vXLaJo
%
% The piano part was taken from Jamey Aebersold's Jazz series, volume
% 3 I think. They might have the transcriptions for the piano part at
% his website.

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "F Blues" }
  opus = \markup { \italic "Jerry Fusilli" }
}
  
% #(load "../scm/swing.scm")

\paper { 
  left-margin = 1\in
  right-margin = 1\in
  top-margin = 1\in
  bottom-margin = 1\in
}

global = {
  \tempo 4 = 150
  \time 4/4
}

my_notes = \relative c, {
  \clef "bass_8"
  \key f \major
  <>^\markup { Swung 8's }
  
  %%\applySwing 8 #'(3 2)
  %%\tripletFeel 8 
  \repeat volta 2 {
    f4 a4 bf4 b4 | c4 bf4 d,4 g4 | f4 ef4 d4 b4 | c4 f4 a4 b,4 |
    \break
    bf4 f'4 bf4 a4 | af4 g4 c,4 e4 | f4 a4 g4 bf4 | a4 f4 d4 gf8 a8 |
    \break
    g4 bf4 a4 af4 | g8 d8 b4 c4 e,4 | f4 a4 bf4 b4 | c4 d4\3 g,4 c4 | 
    \break
    f,4 c'4 f4 a,4 | bf4 g4 b4 g'4 | f4 a4 bf4 b4 | c4 d4 ef4 e8 f8 |
    \break
    bf,4\2 d,4 c4 b4 | bf4 g4 b4 g'8 e8 | f4 a4 d,4 g4 | f4 a4 af4 gf4 |
    \break
    g4 bf4 a4 af4 | g4( d'4) c4 bf4 | a4 f4 d4 af'4 | g4 bf4 c,4 e4 |
    \break
    f4 e4 ds4 f4 | bf,4 b4 c4 bf4 | a4 c4 d4 g8 e8 | f4 a4 \times 2/3 { bf8 f8 c8 } b4 |
    \break
    bf4 f4 g4 a4 | bf4 g4 b4 g'8 e8 | f4 a4 bf4 b4 | c4 d4 ef4 af,4\2 |
    \break
    g4\2 a4\2 bf4\2 d4 | c4 bf4\2 a4\2 g8  e8 | f8 a,8~ a4 d8 e,8 gf4 | g4 b4 c4 gf4 |
    \break
    f4 c'4 f4 a,4 | bf4 bf4 b4 b4 | c4 cs4 d4 g8 e8  | f4 a4 g8 d8 b4 |
    \break
    bf4 bf'4 af4 g4 | d'4 df4 c4 bf4 | a4 f4 d4 b4 | c4 f4 d4 gf4 |
    \break
    g4 bf4 a4 af4 | g4 e'4 g4 e4 | f4 f,4\3 a,4 d4 | g,4 af4 a4 c4
    \bar ":|."
  }
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  
  f1:7 | bf1:7 | f1:7 | s1 |
  bf1:7 | s1 | f1:7 | s1 |
  g1:m7 | c1:7 | f1:7 | c1:7 |
  f1:7 | bf1:7 | f1:7 | s1 |
  bf1:7 | s1 | f1:7 | s1 |
  g1:m7 | c1:7 | f1:7 | c1:7 |  
  f1:7 | bf1:7 | f1:7 | s1 |
  bf1:7 | s1 | f1:7 | s1 |
  g1:m7 | c1:7 | f1:7 | c1:7 |
  f1:7 | bf1:7 | f1:7 | s1 |
  bf1:7 | s1 | f1:7 | s1 |
  g1:m7 | c1:7 | f1:7 | c1:7 |
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
