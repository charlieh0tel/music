% LilyBin

\version "2.18.0"
\include "english.ly"

% If swing needed
%#(load "../scm/swing.scm")

\header {
  piece = \markup { \fontsize #4 \bold "So Very Hard To Go" }
  opus = \markup { \italic "Tower of Power" }
}

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 1\in
  bottom-margin = 1\in
}

cbreak = { 
  \break
} 
sbreak = { \break }


global = {
  \tempo "" 4 = 96
  \time 4/4
  %% \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
}

my_notes = \relative c {
  \clef "bass_8"
  \key bf \major

  bf,4 r8. \deadNote bf16 bf8-. bf4-- bf8-. | 
  bf4 r8. \deadNote bf16 bf8-. bf4-- bf8-. |
  \repeat volta 2 {
    \mark \markup { \box A \italic { Verse }}
    bf4 r8. \deadNote bf16 bf8-. bf4-- bf8-. |
    \break
    bf4 r8. \deadNote bf16 bf8-. bf4-- bf8-. |
    c4 r8. \deadNote c16 c8-. c4-- c8-. |
    c4 r8. \deadNote c16 c8-. c4-- c8-. |
    c4 r8. \deadNote c16 c8-. c4-- c8-. |
    c4 r8. \deadNote c16 c8-. c8 c16 ef16 gf8 |
    bf,4 r8. \deadNote bf16 bf8-. bf4-- bf8-. |
    bf4 r8. \deadNote bf16 bf8-. bf4. \bar "||"
    
    \sbreak
    \mark \markup { \box B}
    bf4 r8. \deadNote bf16 bf8-. bf4-- bf8-. |
    bf4 r8. \deadNote bf16 bf8-. bf4-- bf8-. |
    c4 r8. \deadNote c16 c8-. c4-- c8-. |
    c4 r8. \deadNote c16 c8-. c4-- c8-. |
    c4 r8. \deadNote c16 c8-. c4-- c8-. |
    c4 r8. \deadNote c16 c8-. c4-- c8-. |
    bf4 r8. \deadNote bf16 bf8-. bf4-- bf8-. |
    bf2. bf8-. f8-. \bar "||"
    
    \sbreak
    \mark \markup { \box C \italic { Bridge }}
    bf4. c16 d16 f16-. d16-. bf8 ~ bf8 f8-. | 
    bf4. c16 d16 f16-. d16-. bf8 bf4 | 
    f16 f8.-. f4-> af8 c16 bf16 c4 |
    f,16 f8-. f16 f8-. f8-. f8-. f8-. af16-. c8.-> |
    ef4. ef16 ef16 ef8 af16 a16 bf8 d,16 df16 |
    c4. g'16 gf16 f4 f,4 |
    d'4. c'16 df16 d8 g,16\2 af16\2 a16\2 d,16 a8 | 
    f1 \bar "||"
    \sbreak
    
    \mark \markup { \box D \italic { Chorus }}
    g2 g8 b4-. a8 ~ | a4 d2. |
    g,2 g8 b4-. a8 ~ | a4 d2. |
    \break
  } \alternative {
    { 
      bf4 r8. \deadNote bf16 bf8-. bf4-- bf8-. |
      bf4 r8. \deadNote bf16 bf8-. bf4-- bf8-. | 
    }
    { 
      \sbreak bf4 \mark \markup { \box E \italic { Flgl Solo }} r8. \deadNote bf16 bf8-. bf4-- bf8-. | 
    }
  }
  bf4 r8. \deadNote bf16 bf8-. bf4-- bf8-. |
  c4 r8. \deadNote c16 c8-. c4-- c8-. |
  c4 r8. \deadNote c16 c8-. c4-- c8-. |
  c4 r8. \deadNote c16 c8-. c4-- c8-. |
  c4 r8. \deadNote c16 c8-. c4-- c8-. |
  bf4 r8. \deadNote bf16 bf8-. bf4-- bf8-. |
  bf2. bf8-. f8-. \bar "||"
  
  \sbreak
  \mark \markup { \box F \italic { Bridge }}
  bf4. c16 d16 f16-. d16-. bf8 ~ bf8 f8-. | 
  bf4. c16 d16 f16-. d16-. bf8 bf4 | 
  f16 f8.-. f4-> af8 c16 bf16 c4 |
  f,16 f8-. f16 f8-. f8-. f8-. f8-. af16-. c8.-> |
  ef4. ef16 ef16 ef8 af16 a16 bf8 d,16 df16 |
  c4. g'16 gf16 f4 f,4 |
  d'4. c'16 df16 d8 g,16\2 af16\2 a16\2 d,16 a8 | 
  f1 \bar "||"
  
  \sbreak
  \mark \markup { \box G \italic { Chorus }}
  g2 g8 b4-. a8 ~ | a4 d2. |
  g,2 g8 b4-. a8 ~ | a4 d4 a16 ( b16 c16 cs16 d4-. ) |
  \cbreak
  g,2 g8 b4-. a8 ~ | a8 a16 a16 a16 d8.-> a16 a16 a16 d16-> ~ d16 a16 d8-. |
  g,2 g8 b4-. a8 ~ | a4 d2. |
  bf1 \fermata \bar ".|"
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  bf1 | s1
  \repeat volta 2 {
    bf1 | s |c:7 | s | c:min7 | c:dim7 | bf | s |
    %% B
    bf1 | s | c:7 | s | c:min7 | c:dim7 | bf | s |
    %% C Bridge
    bf1 | bf:maj7 | f:min7 | s1 | ef:maj7 | c:min7 | d:min7 | s1 
    %% D Chrous
    g2:maj7 ~ s8 ~ s4 a8:min7 ~ | s4 d2.:7sus4 |
    g2:maj7 ~ s8 ~ s4 a8:min7 ~ | s4 d2.:7sus4 |
  } \alternative {
    { 
      bf1 | s1 |
    }
    { 
      %% E
      bf1 
    }
  }
  s1 | c:7 | s | c:min7 | c:dim7 | bf | s |
  %% F Bridge
  bf1 | bf:maj7 | f:min7 | s1 | ef:maj7 | c:min7 | d:min7 | s1
  %% G Chorus
  g2:maj7 ~ s8 ~ s4 a8:min7 ~ | s4 d2.:7sus4 |
  g2:maj7 ~ s8 ~ s4 a8:min7 ~ | s4 d2.:7sus4 |
  g2:maj7 ~ s8 ~ s4 a8:min7 ~ | s4 d2.:7sus4 |
  g2:maj7 ~ s8 ~ s4 a8:min7 ~ | s4 d2.:7sus4 |
  bf
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
