% LilyBin

\version "2.18.0"
\include "english.ly"

% If swing needed
%#(load "../scm/swing.scm")

\header {
  piece = \markup { \fontsize #4 \bold "Building Walking Bass Lines" }
  opus = \markup { \italic "Friedland" }
}

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 1\in
  bottom-margin = 1\in
}

global = {
  % \tempo "" 4 = xx
  % \time 4/4
  % \compressFullBarRests
  % \override MultiMeasureRest.expand-limit = #2
}

my_notes = \relative c {
  \clef "bass_8"
  \key c \major
  
  %% 3
  \mark \markup { \bold { [3] } }
  a,4 a d d | g g g, g |  c c f f | bf, bf' bf, bf | \break
  ef ef af af | df, df gf gf | b, b b' b, | e e e,\4 e\4 \bar ":|." \break
  
  %% 4
  \mark \markup { \bold { [4] } }
  g g' c, c' | f,, f' bf, bf' | ef,\3 ef' af,, af'\2 | g, g' c, c' |  \break
  f,, f' f, f' | bf, bf' bf, bf' | ef,\3 ef' c, c' | f,, f' bf, bf' \bar ":|." \break
  

  %% 5
  \pageBreak
  \mark \markup { \bold { [5] } }
  \key f \major
  f2 c2 | bf f' | f, c' | f c | \break
  bf f' | bf f | f, c' | f c | \break
  g' d | c g | f d' | g c, \bar ":|." \break
  
  %% 6
  \mark \markup { \bold { [6] } }
  f4 f c f, | bf f' bf f | f, f c' c | f f c f, | \break
  bf bf f' f | bf bf f f | f, f c' c | f, c' f c | \break
  g d' g d | c c g g | f c' d a | g d' c g' \bar ":|." \break
  
  %% 7
  \pageBreak
  \mark \markup { \bold { [7] } }
  \key c \major
  fs4 cs b fs' | e b a e' | d a' g d | c c g c | \break
  b fs e' b' |  a e d a' | g d c g | f' f c f \bar ":|." \break  
  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  
  %% 3
  a2:m7 d:7 | g:maj7 s | c:m7 f:7 | bf:maj7 s |
  ef:m7 af:7 | df:maj7 gf:maj7 | b:m7 s | e:7 s |

  %% 4
  g2:m7 c:7 | f:m7 bf:7 | ef:m7 af:7 | g:m7 c:7 |
  f:m7 s | bf:7 s | ef:maj7 c:m7 | f:m7 bf:7 |
  
  %% 5
  f1:7 | bf:7 | f:7 | f:7 | 
  bf:7 | bf:7 | f:7 | f:7 |
  g:m7 | c:7 | f2:7 d:7 | g:m7 c:7 |
  
  %% 6
  f1:7 | bf:7 | f:7 | f:7 | 
  bf:7 | bf:7 | f:7 | f:7 |
  g:m7 | c:7 | f2:7 d:7 | g:m7 c:7 |
  
  %% 7
  fs2:m7 b:7 | e:7 a:7 | d:m7 g:7 | c1:maj7 |
  b2:m7 e:7 | a:m7 d:7 | g:m7 c:7 | f1:maj7 |
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
    \set TabStaff.minimumFret = #1
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
