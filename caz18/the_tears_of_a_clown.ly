% LilyBin

\include "english.ly"

\version "2.18.0"

\header {
  piece = \markup { \fontsize #4 \bold "The Tears of a Clown" }
  opus = \markup { \italic "The Miracles" }
}

\paper { 
  left-margin = 1.0\in
  right-margin = 0.5\in
}

my_notes = \relative c, {
  \clef "bass_8"
  \time 4/4
  \tempo 4 = 130
  
  \key f \major
  %% WRONG KEY
  %% f4-. \mf r4 r2 | r2 r4 f8-. c'8-. | f,4-. r4 r2 | r2 r4 r8 c8->~ \f |
  %% c8 d8 e8 f8-> ~f8 c8 d8 ef8-> ~ef8 f8 g8 bf8-> ~bf8 bf8 g8 d8->~ |
  
  r1 | r1 | r1 | r2 r4 r8 c8->~ \f |
  \break
  c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ | bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
  c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ | bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
  \break
  \repeat volta 2 {
    %% 9
    \mark \default
    c8 \mf d8 e8 f8-> ~f8 g,8 a8 bf8->~ | bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
    c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ | bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
    \break
    c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ | bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
    c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ | bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
    \break
    c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ | bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
    c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ | bf8 c8 d8 f8-> ~f8 d8 c8 g8-. |
    \break
    %% 21
    c4-> \f g'8 c8 f,4.-> f8 | bf,4-> f'8 f,8-> ~f8 c'8 c8 c8 | 
    c4-> g'8 c8 f,4.-> f8 | bf,4-> f'8 f,8-> ~f8 c'8 c8 c8 | 
    c4-> g'8 c8 f,4.-> f8 | bf,4-> f'8 f,8-> ~f8 c'8 c8 c8 | 
    c4-> g'8 c8 f,4.-> f8 | bf,4-> f'8 f,8-> ~f8 c'8 c8 c8 | 
    \break
    
    %% 29
    \mark \default
    g'8 g8 g8 g8 g8 g8 g8 g8 | gs8 gs8 gs8 gs8 gs8 gs8 gs8 gs8 |
    a8 a8 a8 a8 a8 a8 a8 a8 | f,2 f'4. r8 |
    \break
    %% 33
    r1 \mf | r1 | r1 | r2 r4 r8 c8->~ |
  } \alternative {
    {     
      %% 37
      c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ | bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
      c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ | bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
      \break
    }
    {
      c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ | bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
      c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ | bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
    }
  }
  
  %% 45
  c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
  bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
  c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
  bf8 c8 d8 f8-> ~f8 d8 c8 g8-. |    %% CHECK last note
  
  %% 49
  r1 | r2 r4 r8 c8->~ |
  \repeat volta 2 {
    \bar "[|:"
    c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ | bf8 c8 d8 f8-> ~f8 d8 c8 c8->~
    \bar ":|]"
  }  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  c1 | s1 | s1 | s1 |
  %% 5
  c2 f2 | bf2 f2 | 
  c2 f2 | bf2 f2 | 
  \repeat volta 2 {
    %% 9
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    g1 | e:7/gs | a:m | f:maj7
    c1 | s1 | s1 | s1
  } \alternative {
    {
      c2 f2 | bf2 f2 | c2 f2 | bf2 f2 |
    }
    {
      c2 f2 | bf2 f2 | c2 f2 | bf2 f2 |
    }
  }
  
  %45
  c2 f2 | bf2 f2 | c2 f2 | bf2 f2 |
  c1 | s1 |
  
  \repeat volta 2 {
    c2 f2 | bf2 f2 |
  }
  
}

my_music = <<
  \new ChordNames \my_chords
  \new Staff \my_notes
  \new TabStaff
  \with { stringTunings = #bass-tuning } 
  { 
    \set TabStaff.minimumFret = #1
    \set TabStaff.restrainOpenStrings = ##t
    \my_notes
  }
>>
  
\score {
  \my_music
  \layout {
    \set Score.markFormatter = #format-mark-box-alphabet
    \context {
      \Score
    }
  }
}

\score {
  \unfoldRepeats
  \my_music
  \midi {}
}

