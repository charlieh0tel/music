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
  % \compressFullBarRestsWho to follow
  % \override MultiMeasureRest.expand-limit = #2
}

my_notes = \relative c {
  \clef "bass_8"
  
  %% 1
  \mark \markup { \bold { [1] F Blues 2 Feel } }
  \key f \major
  f,,2 f | bf bf | f' f | f, f | \break
  bf bf | bf' bf | f f | f, f | \break
  g g | c c | f, d' | g, c \bar ":|." \break
  
  %% 2
  \mark \markup { \bold { [2] F Blues 4 Feel } }
  \key f \major
  f,4 f f' f | bf, bf bf' bf | f f f f | f, f f f | \break
  bf bf bf bf | bf' bf bf bf | f f f f | f, f f f | \break
  g g g' g | c, c c' c | f, f d d | g g c, c \bar ":|." \break
  
  %% 3
  \pageBreak
  \mark \markup { \bold { [3] Cof5ths } }
  \key c \major
  a4 a d d | g g g, g |  c c f f | bf, bf' bf, bf | \break
  ef ef af af | df, df gf gf | b, b b' b, | e e e,\4 e\4 \bar ":|." \break
  
  %% 4
  \mark \markup { \bold { [4] Cof5ths } }
  \key c \major
  g g' c, c' | f,, f' bf, bf' | ef,\3 ef' af,, af'\2 | g, g' c, c' |  \break
  f,, f' f, f' | bf, bf' bf, bf' | ef,\3 ef' c, c' | f,, f' bf, bf' \bar ":|." \break
  

  %% 5
  \pageBreak
  \mark \markup { \bold { [5] F Blues 2 Feel } }
  \key f \major
  f,2 c' | bf f' | f, c' | f c | \break
  bf f' | bf f | f, c' | f c | \break
  g' d | c g | f d' | g c, \bar ":|." \break
  
  %% 6
  \mark \markup { \bold { [6] F Blues 4 Feel } }
  \key f \major
  f4 f c f, | bf f' bf f | f, f c' c | f f c f, | \break
  bf bf f' f | bf bf f f | f, f c' c | f, c' f c | \break
  g d' g d | c c g g | f c' d a | g d' c g' \bar ":|." \break
  
  %% 7
  \pageBreak
  \mark \markup { \bold { [7] Cof5ths } }
  \key c \major
  fs4 cs b fs' | e b a e' | d a' g d | c c g c | \break
  b fs' e b' |  a e d a' | g d c g' | f f c f \bar ":|." \break  
  
  \mark \markup { \bold { [8] Cof5ths } }
  \key c \major
  a,2 d | g,1 | g2 c2 | f,1 | \break
  f2 bf | ef1 | e,2\4 a2 | d1 \bar ":|." \break
  
  \pageBreak
  \mark \markup { \bold { [9] Bb Blues } }
  \key bf \major
  bf1 | ef | bf | bf | \break
  ef | ef | bf | bf | \break
  c | f, | bf2 g2 | c2 f,2 \bar ":|." \break

  \mark \markup { \bold { [10] Eb Blues } }
  \key ef \major
  ef'1 | af, | ef' | ef | \break
  af | af | ef | ef | \break
  f, | bf | ef2 c | f, bf \bar ":|." \break

  \pageBreak
  \mark \markup { \bold { [11] F Blues Chrom } }
  \key f \major
  f4 b c b | bf e f gf | f b, c gf | f c' f a | \break
  bf gf f a,\3 | bf f' bf e, | f gf f c | f, e\4 f fs | \break
  g cs d df | c c' g gf | f ef d af | g b c e,\4 \bar ":|." \break
  
  \mark \markup { \bold { [12] Bb Blues Chrom} }
  \key bf \major
  bf'1 | ef | bf | bf | \break
  ef | ef | bf | bf | \break
  c | f, | bf2 g | c f, \bar ":|." \break
  
  \pageBreak
  \mark \markup { \bold { [13] Cof5ths Chrom } }
  \key c \major
  e'4 bf a\3 ef' | d gs a af | g df c e | f df c f, | \break
  e\4 bf' a cs | d af' g df | c e,\4 f a | bf e f f \bar ":|." \break
  
  \mark \markup { \bold { [14] Co5ths Chrom } }
  \key c \major
  f,2 bf | ef c | f, bf | g c | \break
  a d | g, c | f, bf | ef c \bar ":|." \break
  
  \pageBreak
  \mark \markup { \bold { [15] F Blues Dbl Chrom } }
  \key f \major
  f4 f c b | bf bf' ef, e | f c' g gf | f f,af a | \break
  bf e f a | bf bf g gf | f c ef e | f c f, fs | \break
  g g' d df | c c g gf | f ef' d af | g b c e \bar ":|." \break
  
  \mark \markup { \bold { [16] Bb Blues Dbl Chrom } }
  \key bf \major
  bf1 | ef | bf | bf | \break
  ef | ef | bf | bf | \break
  c | f, | bf2 g2 | c2 f,2 \bar ":|." \break
  
  \pageBreak
  \mark \markup { \bold { [17] F Dom } }
  \key f \major
  
  f'4 g c, f | bf, f bf c | f c g' c, | f, g c f | \break
  bf bf f f, | bf c f c | f, c' g' c, | f c f d | \break
  g a d, g, | c g' g, c | f a d, d' | g, g c, c' | \break
  
  f, c' c, f | bf c f, c | f f g c | f,, c' f f, | \break
  bf c f f, | bf f' bf c | f, g c, c | f, c' f d | \break
  g, a d g | c, c' g c, | f a, d d | g, g' c, c \bar ":|." \break
  
  \pageBreak
  \mark \markup { \bold { [20] F Dom+Chr } }
  \key f \major
  f g c, b | bf e f c | f, df' c e | f g c, f | \break
  bf e, f a, | bf a bf c | f, b c e | f c f, af | \break
  g d' g df | c d g, gf | f a d af | g b c e \bar ":|." \break
  
  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  
  %% 1
  f1:7 | bf:7 | f:7 | f:7 |
  bf:7 | bf:7 | f:7 | f:7 |
  g:m7 | c:7 | f2:7 d:m7 | g:m7 c:7 |
  
  %% 2
  f1:7 | bf:7 | f:7 | f:7 |
  bf:7 | bf:7 | f:7 | f:7 |
  g:m7 | c:7 | f2:7 d:m7 | g:m7 c:7 |  
  
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
  
  %% 8
  a2:m7 d:7 | g1:maj7 | g2:m7 c:7 | f1:maj7 |
  f2:m7 bf:7 | ef1:maj7 | e2:m7 a:7 | d1:maj7 |
  
  %% 9
  bf1:7 | ef:7 | bf:7 | bf:7 |
  ef:7 | ef:7 | bf:7 | bf:7 |
  c:m7 | f:7 | bf2:7 g:7 | c:m7 f:7 |

  %% 10
  ef1:7 | af:7 | ef:7 | ef:7 |
  af:7 | af:7 | ef:7 | ef:7 |
  f:m7 | bf:7 | ef2:7 c:7 | f:m7 bf:7 |
  
  %% 11
  f1:7 | bf:7 | f:7 | f:7 | 
  bf:7 | bf:7 | f:7 | f:7 |
  g:m7 | c:7 | f2:7 d:7 | g:m7 c:7 |
  
  %% 12
  bf1:7 | ef:7 | bf:7 | bf:7 |
  ef:7 | ef:7 | bf:7 | bf:7 |
  c:m7 | f:7 | bf2:7 g:7 | c:m7 f:7 |
  
  %% 13
  e2:m7 a:7 | d1:maj7 | g2:m7 c:7 | f1:maj7 |
  e2:m7 a:7 | d:m7 g:7 | c:m7 f:7 | bf1:maj7 |
  
  %% 14
  f2:m7 bf:7 | ef:maj7 c:m7 | f:m7 bf:7 | g:m7 c:7 |
  a:m7 d:7 | g:m7 c:7 | f:m7 bf:7 | ef:maj7 c:7 |
  
  %% 15
  f1:7 | bf:7 | f:7 | f:7 |
  bf:7 | bf:7 | f:7 | f:7 |
  g:m7 | c:7 | f2:7 d:7 | g:m7 c:7 |
  
  %% 16
  bf1:7 | ef:7 | bf:7 | bf:7 |
  ef:7 | ef:7 | bf:7 | bf:7 |
  c:m7 | f:7 | bf2:7 g:7 | c:m7 f:7 |
  
  %% 17
  f1:7 | bf:7 | f:7 | f:7 |
  bf:7 | bf:7 | f:7 | f:7 |
  g:m7 | c:7 | f2:7 d2:7 | g:m7 c:7 |
  f1:7 | bf:7 | f:7 | f:7 |
  bf:7 | bf:7 | f:7 | f:7 |
  g:m7 | c:7 | f2:7 d2:7 | g:m7 c:7 |
  
  %% 20
  f1:7 | bf:7 | f:7 | f:7 |
  bf:7 | bf:7 | f:7 | f:7 |
  g:m7 | c:7 | f2:7 d2:7 | g:m7 c:7 |
  
}

my_music = <<
  \new ChordNames {
    \set ChordNames.midiInstrument = "percussive organ"
    \set ChordNames.midiMaximumVolume = #0.2
    \set chordChanges = ##f
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
