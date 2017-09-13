\version "2.16.2"

% If swing needed
%#(load "../scm/swing.scm")

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
}

these_notes = \relative c, {
  \clef "bass_8"
  \key f \major
  \time 4/4
  \tempo 4 = 150
  %\tripletFeel 8 
  %{

  %% Notes

  %}
}

these_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  
  %% Chords.   Use s1 to supress chord for a measure.
}

\header {
  piece = \markup { \fontsize #4 \bold "Piece" }
  opus = \markup { \italic "Author" }
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
