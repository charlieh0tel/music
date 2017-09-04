% F Blues
% Jerry Fusilli
%
% https://www.youtube.com/watch?v=yEE52vXLaJo
%
% The piano part was taken from Jamey Aebersold's Jazz series, volume
% 3 I think. They might have the transcriptions for the piano part at
% his website.

\version "2.16.2"

#(load "../scm/swing.scm")

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
}

these_notes = \relative c, {
  \clef "bass_8"
  \key f \major
  \time 4/4
  \tempo 4 = 150
  <>^\markup { Swung 8's }
  
  \tripletFeel 8 
  {

  f4 a4 bes4 b4 | c4 bes4 d,4 g4 | f4 ees4 g4 b,4 | c4 f4 a4 b,4 |
  \break
  bes4 f'4 bes4 a4 | aes4 g4 c,4 e4 | f4 a4 g4 bes4 | a4 f4 d4 ges8 a8 |
  \break
  g4 bes4 a4 aes4 | g8 d8 b4 c4 e,4 | f4 a4 bes4 b4 | c4 d4 g,4 c4 | 
  \break
  f,4 c'4 f4 a,4 | bes4 g4 b4 g'4 | f4 a4 bes4 b4 | c4 d4 ees4 e8 f8 |
  \break
  bes,4 d,4 c4 b4 | bes4 g4 b4 g'8 e8 | f4 a4 d,4 g4 | f4 a4 aes4 ges4 |
  \break
  g4 bes4 a4 aes4 | g4( d'4) c4 bes4 | a4 f4 d4 aes'4 | g4 bes4 c,4 e4 |
  \break
  f4 e4 es4 f4 | bes,4 b4 c4 bes4 | a4 c4 d4 g8 e8 | f4 a4 \times 2/3 { bes8 f8 c8 } b4 |
  \break
  bes4 f4 g4 a4 | bes4 g4 b4 g'8 e8 | f4 a4 bes4 b4 | c4 d4 ees4 aes,4 |
  \break
  g4 a4 bes4 d4 | c4 bes4 a4 g8  e8 | f8 a,8~ a4 d8 e,8 ges4 | g4 b4 c4 ges4 |
  \break
  f4 c'4 f4 a,4 | bes4 bes4 b4 b4 | c4 cis4 d4 g8 e8  | f4 a4 g8 d8 b4 |
  \break
  bes4 bes'4 aes4 g4 | d'4 des4 c4 bes4 | a4 f4 d4 b4 | c4 f4 d4 ges4 |
  \break
  g4 bes4 a4 aes4 | g4 e'4 g4 e4 | f4 f,4 a,4 d4 | g,4 aes4 a4 c4 | \bar "|."
  }
}

these_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  
  f1:7 | bes1:7 | f1:7 | s1 |
  bes1:7 | s1 | f1:7 | s1 |
  g1:m7 | c1:7 | f1:7 | c1:7 |
  f1:7 | bes1:7 | f1:7 | s1 |
  bes1:7 | s1 | f1:7 | s1 |
  g1:m7 | c1:7 | f1:7 | c1:7 |  
  f1:7 | bes1:7 | f1:7 | s1 |
  bes1:7 | s1 | f1:7 | s1 |
  g1:m7 | c1:7 | f1:7 | c1:7 |
  f1:7 | bes1:7 | f1:7 | s1 |
  bes1:7 | s1 | f1:7 | s1 |
  g1:m7 | c1:7 | f1:7 | c1:7 |
}

\header {
  piece = \markup { \fontsize #4 \bold "F Blues" }
  opus = \markup { \italic "Jerry Fusilli" }
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
