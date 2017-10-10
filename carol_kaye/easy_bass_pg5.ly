\version "2.16.2"

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
}

these_notes = \relative c, {
  \clef "bass_8"
  \key c \major
  \time 4/4
  \tempo 4 = 150

  c4 r8 g'8 bes8 b8 c8 c,8~ | c4. g8~ g8 g8 bes4 |
  c4 r8 g'8 bes8 b8 c8 c,8~ | c4 c8 ees8~ ees8 c8 ees8 e8 |
  \break
  f4 r8 c8 ees8 e8 f8 f,8~ | f4. c'8~ c8 ees8 f4 |
  c4 r8 g'8 bes8 b8 c8 c,8~ | c8 e,4 f4 fis4 fis8 |
  \break
  g4 r8 d'8 f8 fis8 g8 f8~ | f4. c8 ees8 ees8 f4 |
  c4 r8 g'8 bes8 b8 c8 c,8~ | c8 e,4 f4 fis4 g8 | 
}

\header {
  piece = \markup { \fontsize #4 \bold "Easy Bass Pattern Page 5" }
  opus = \markup { \italic "Carol Kaye" }
}
  
\score {
  <<
    \new Staff \these_notes
    \new TabStaff
    \with { stringTunings = #bass-tuning } 
    { 
      \set TabStaff.minimumFret = #1
      \set TabStaff.restrainOpenStrings = ##t
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
