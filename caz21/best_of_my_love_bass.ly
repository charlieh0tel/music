% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Best of My Love" }
  opus = \markup { \italic "The Emotions" }
}

\paper { 
  left-margin = 1.0 \in
  right-margin = 0.5 \in
  top-margin = 1.0 \in
  bottom-margin = 1.0 \in
}

cbreak = { 
  %%\break
} 
sbreak = { \break }


global = {
  \time 4/4
  \tempo "Disco/Soul" 4 = 115
}

my_notes = \relative c {
  \clef "bass_8"
  \key c \major
  
  %% 1
  \override Stem.direction = #DOWN
  g16\2-> \f \< g16\2-> g,8-. g8-. g'16\2-> g16\2-> 
  \revert Stem.direction g,8-. g8-. \override Stem.direction = #DOWN
  g'16\2-> g16\2-> r8 \! |
  r4 r8 \ff g16\2-> g16\2-> g16\2-> g16\2-> r8 r4 \bar "||"
  \revert Stem.direction
  
  %% 3
  \cbreak \sbreak
  \mark \markup { \box A }
  f4-. \f r8 f8 e4-. r8 e8 | d4-. r8 d8 c8-. d-. e4 |
  f4-. r8 f8 e4-. r8 e8 | d8-. e-. f8. c16-. c8-. d8-. e4 \bar "||"
  
  %% 7
  \cbreak \sbreak
  \mark \markup { \box B \italic {(vocals)} }
  f4-. \mf r8 f8 e4-. r8 e8 | d4-. r8 d8 c8-. d-. e4 | f4-. r8 f8 e4-. r4 | d8-. e-. f4 c8. g16-. g4 |
  
  % 11
  \cbreak
  f'4-. r e-. r | d-. r c8-. d8-. e4 | f4-. r e-. r | d8-. e-. f8. c16-. c8-. d-. e4 |
  f-. r e-. r |
  %% 16
  \cbreak
  d4-. r c8-. d-. e4 | f-. r e-. r | d8-. e8-. f8. c16-. c8 d4 e8 | 
  f4-. r e-. r |
  %% 20
  \cbreak
  d4-. r c8-. d8-. e4 | f-. r e-. r | d8-. e-. f8. c16-. c8 e,8 g8 fs \bar "||"
  
  % 23
  \cbreak \sbreak
  \mark \markup { \box C }
  f4-. r8 f'-. e4-. r8 e8-. | d4-. r8 d8 c-. d-. e4 | f4-. r8 f8 e4-. r8 e8 | d8-. e8-. f8. c16-. c4 d8 e |
  
  %% 27
  \cbreak
  f4-. r8 f e4-. r | d4-. r4 c8-. d-. e4 | f4-. r e-. r | d8-. e-. f8. c16-. c8-. d-. e4 \bar "||"
  
  %% 31
  \cbreak \sbreak
  \mark \markup { \box D }
  f4-. r e-. r | d-. r c8. g16-. g8 fs8 | f4-. r e-. r | d'8-. e-. f8. c16-. c8-. d-. e4 |
  
  %% 35
  \cbreak
  f4-. r e-. r | d-. r  c8-. d-. e4 | f4-. r e-.  r8. d16-. | d8-. e8-. f8. c16-. c8-. d8-. e4 \bar "||"
  
  %% 39
  \cbreak \sbreak
  \mark \markup { \box E }
  r8 f8-. r16 f16 r16 d16 f4 f,4 | r8 e'8-. r16 e16 r16 d16 e4 e,4 | r8 d'8-. r16 d16 r16 d16 d2 | r8 c8-. r16 c'16 r16 c,16 c4 c4-. | 
  
  %% 43
  \cbreak
  r8 \f f8-. r16 f16 r16 d16 f2 | r8 e8-. r16 e16 r16 d16 e2 | r8 gs8-. r16 gs16 r16 gs16 gs2 |
  r8 a8-. r16 a16 r16 a,16 a2 | d2\3-> d2\3-> |
  \override Stem.direction = #DOWN
  g16\2-> \f \< g16\2-> g,8-. g8-. g'16\2-> g16\2-> 
  \revert Stem.direction g,8-. g8-. \override Stem.direction = #DOWN
  g'16\2-> g16\2-> r8 \! |
  \revert Stem.direction
  \bar "||"

  %% 49
  \cbreak \sbreak
  \mark \markup { \box F }
  f4-. \mf r e-. r | d4-. r4 c8. g16-. g4 | f4-. r e-. r | d'8-. e-. f8. c16-. c8-. d8-. e4 |
  
  %% 53
  \cbreak
  f4-. r e-. r | d4-. r c8-. d-. e4 | f4-. r e-. r | d8-. e-. f8. c16-. c4 g8 fs \bar "||"
  
  %% 57
  \cbreak \sbreak
  \mark \markup { \box G }
  f'4-. r8 f8 e4-. r4 | d4-. r4 c-. d8-. e-. | f4-. r e-. r | d8-. e-. f8. c16-. c4 g4 |
  
  %% 61
  \cbreak
  f4-. r4 e'4-. r4 | d4-. r4 c-. d8-. e-. | f4-. r e-. r | d8-. e-. f8. c16-. c4-. d8 e \bar "||"
  
  %% 65
  \cbreak \sbreak
  \mark \markup { \box H }
  r8 \f f8-. r16 f16 r16 d16 f2 | r8 e8-. r16 e16 r16 d16 e2 | r8 d8-. r16 d16 r16 d16 d4 d'4 | r8 c,8 ~c16 c'16 r16 c,16-. c4 g4-. | 
  
  %% 69
  \cbreak
  r8 f-. r16 f16 r8 f2 | r8 e'8-. r16 e16 r16 d16 e2 | r8 gs8-. r16 gs16 r16 gs16 gs2 | r8 a8-. r16 a16 r16 a16 a2 |
  
  %% 73
  \cbreak
  d,2\3-> d2\3-> |
  \override Stem.direction = #DOWN
  g16\2-> \f \< g16\2-> g,8-. g8-. g'16\2-> g16\2-> 
  \revert Stem.direction g,8-. g8-. \override Stem.direction = #DOWN
  g'16\2-> g16\2-> r8 \! |
  r4 r8 \ff g16\2-> g16\2-> g16\2-> g16\2-> r8 r4 \bar "||"
  \revert Stem.direction
  
  %% 76
  \cbreak \sbreak
  \mark \markup { \box I }
  f4-. \mf r8 f8 e4-. r4 | d4-. r4 c-. g | f4-. r e-. r | d'8-. e-. f8. c16-. c4 d8 e |
  
  %% 80
  \cbreak
  f4-. r e-. r | d-. r c-. d8-. e-. | f4-. r e-. r | d8-. e-. f8. c16-. c4 d8-. e-.  \bar "||"
  
  %% 84
  \cbreak \sbreak
  \mark \markup { \box J }
  f4-. r e-. r | d-. r c-. d8-. e-. | f4-. r e-. r | d8-. e-. f4 c4-. d8-. e-. |
  
  %% 88
  f4-. r e-. r | d-. r c8-. c8 d8-. e-. | f4-. r e-. r | d8-. e-. f4 c4-. d8-. e-. |
  
  %% 92
  \cbreak \sbreak
  \mark \markup { \box K }
  \repeat volta 2 
    {
       f,4-. r e'-. r | d4-. r c-. d8-. e-. | f4-. r e-. r | d4-. r c8 c'8 c,8 c'8 |  f,4-. r e-. r |
       %% 97
       d4-. r c8 e,8 g4 | f4-. r e-. r |
    } 
  \alternative {
    {
      d'4-. r c-. c-. |
    }
    {
      d4-. r c-. r8 c8 \bar "||"
    }
  }
  
  %% 101
  \cbreak \sbreak
  \mark \markup { \box L }
  r8 \f f8-. r16 f16 r16 d16 f2 | r8 e8-. r16 e16 r16 d16 e2 | r8 d8-. r16 d16 r16 d16 d4 d'4 | r8 c,8 ~c16 c'16 r16 c,16-. c4 g4-. | 
  
  %% 103
  \cbreak
  r8 f-. r16 f16 r8 f2 | r8 e'8-. r16 e16 r16 d16 e2 | r8 gs8-. r16 gs16 r16 gs16 gs2 | r8 a8-. r16 a16 r16 a16 a2 |
  
  %% 109
  \cbreak
  d,2\3-> d2\3-> |
  \override Stem.direction = #DOWN
  g16\2-> \f \< g16\2-> g,8-. g8-. g'16\2-> g16\2-> 
  \revert Stem.direction g,8-. g8-. \override Stem.direction = #DOWN
  g'16\2-> g16\2-> r8 \! |
  r4 r8 \ff g16\2-> g16\2-> g16\2-> g16\2-> r8 r4 \bar "|."
  \revert Stem.direction
  
  
  

}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  %% 1
  g1:sus9 | s1 |

  %% 3 [A]
  f2:maj7 e:m7 | d:m7 c8 d:m7 e4:m6 |
  f2:maj7 e:m7 | d:m7 c8 d:m7 e4:m6 |
  
  %% 7 [B]
  f2:maj7 e:m7 | d:m7 c8 d:m7 e4:m6 |
  f2:maj7 e:m7 | d8:m7 e:m6 f4 c2:7 |
  
  %% 11
  f2:maj7 e:m7 | d:m7 c8 d:m7 e4:m6 |
  f2:maj7 e:m7 | d8:m7 e:m6 f4 c8 d:m7 e4:m6 |
  
  f2:maj7 e:m7 | 
  %% 16
  d:m7 c8 d:m7 e4:m6 | f2:maj7 e:m7 | d8:m7 e:m6 f4 c2:9 |
  f2:maj7 e:m7 |
  
  %% 20 
  d:m7 c8 d:m7 e4:m6 | f2:maj7 e:m7 | d8:m7 e:m6 f4 c8 d:m7 e4:m6 |
  
  %% 23 [C]
  f2:maj7 e:m7 | d:m7 c8 d:m7 e4:m6 | f2:maj7 e2:m7 | d8:m7 e:m6 f4 c2:9 |
  
  %% 27
  f2:maj7 e:m7 | d2:m7 c8 d:m7 e4:m6 | f2:maj7 e:m7 | d8:m7 e:m6 f4 c8 d:m7 e4:m6 |
  
  %% 31 [D]
  f2:maj7 e:m7 | d2:m7 c:maj7 | f2:maj7 e:m7 | d8:m7 e:m6 f4 c2:9 |
  
  %% 35
  f2:maj7 e:m7 | d2:m7 c8 d:m7 e4:m6 | f2:maj7 e:m7 | d8:m7 e:m6 f4 c8 d:m7 e4:m6 |
  
  %% 39 [E]
  f1:maj7 | e1:m7 | d1:m7 | c2 c2:9 | 
 
  %% 43
  f1:maj7 | e1:m7 | e1:7/gs | 
  
  %% 46
  a1:m7 | d2:m9 d:9 | g1:sus9 |
  
  %% 49 [F]
  f2:maj7 e:m7 | d2:m7 c8 d:m7 e4:m6 | f2:maj7 e:m7 | d8:m7 e:m6 f4 c8 d:m7 e4:m6 |
  
  %% 53
  f2:maj7 e:m7 | d2:m7 c8 d:m7 e4:m6 | f2:maj7 e:m7 | d8:m7 e:m6 f4 c2:9 |
  
  %% 57 [G]
  f2:maj7 e:m7 | d2:m7 c8 d:m7 e4:m6 | f2:maj7 e:m7 | d8:m7 e:m6 f4 c2:9 |

  %% 61
  f2:maj7 e:m7 | d2:m7 c8 d:m7 e4:m6 | f2:maj7 e:m7 | d8:m7 e:m6 f4 c2:7 |
  
  %% 65 [H]
  f1:maj7 | e1:m7 | d1:m7 | c1 |
  
  %% 69
  f1:maj7 | e1:m7 | e1:7/gs | a1:m7 |
  
  %% 73
  d2:m9 d2:9 | g1:sus9 | s1 |
  
  %% 76 [I]
  f2:maj7 e:m7 | d2:m7 c8 d:m7 e4:m6 | f2:maj7 e:m7 | d8:m7 e:m6 f4 c8 d:m7 e4:m6 |
  
  %% 80
  f2:maj7 e:m7 | d2:m7 c8 d:m7 e4:m6 | f2:maj7 e:m7 | d8:m7 e:m6 f4 c2:9 |
  
  %% 84 [J]
  f2:maj7 e:m7 | d2:m7 c8 d:m7 e4:m6 | f2:maj7 e:m7 | d8:m7 e:m6 f4 c2:9 |
  
  %% 88
  f2:maj7 e:m7 | d2:m7 c2:9 | f2:maj7 e:m7 | d8:m7 e:m6 f4 c2:9 |
  
  %% 92 [K]
  \repeat volta 2 
    {
      f2:maj7 e:m7 | d2:m7 c8 d:m7 e4:m6 | f2:maj7 e:m7 | d2:m7 c2:9 |  f2:maj7 e2:m7 |
      d2:m7 c2:9 | f2:maj7 e2:m7 |
    } 
  \alternative {
    {
      d2:m7 c2:9 |
    }
    {
      d2:m7 c2 |
    }
  }
  
  %% 101 [L]
  f1:maj7 | e1:m7 | d1:m7 | c1 |
  
  %% 103
  f1:maj7 | e1:m7 | e1:7/gs | a1:m7 |
  
  %% 109
  d2:m9 d2:m9 | g1:sus9 | s1 |
}

ticktock = \drummode {
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
    %%\set TabStaff.minimumFret = #1
    %%\set TabStaff.restrainOpenStrings = ##t
    \global
    \my_notes
  }
  \tag #'midiOnly
  \new DrumStaff = TickTock <<
    \new DrumVoice = "ticktock" {
      \set DrumStaff.instrumentName = "TickTock"
      \set DrumStaff.midiMaximumVolume = #0.7
      \global
      \ticktock
    }
  >>
>>
  
\score {
  \removeWithTag #'midiOnly \my_music
  \layout {
    \context {
      \Score
        \override StringNumber #'stencil = ##f
        \override ChordName.font-size = -2
    }
  }
}

\score {
  \removeWithTag #'scoreOnly \unfoldRepeats \my_music
  \midi {}
}
