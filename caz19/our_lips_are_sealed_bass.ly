% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Our Lips Are Sealed" }
  opus = \markup { \italic "The Go-Gos" }
}

\paper { 
  left-margin = 1.0 \in
  right-margin = 0.5 \in
  top-margin = 0.5 \in
  bottom-margin = 0.5 \in
}

mBreak = {
  %% \break
}

cBreak = { \break }

global = {
  \time 4/4
  \tempo "Pop/rock" 4 = 135
}

my_notes = \relative c {
  \clef "bass_8"
  \key af \major
  \override Glissando.style = #'zigzag
  \override MultiMeasureRest.expand-limit = #2
  
  \compressMMRests {
    r1 | r1 \bar "||"
    R1*3 |
  }
  
  r4 r2 af8\4 \glissando af,8 \bar "||"
  af8 af af af'-.\2 r f ef c |
  \break
  %% 8
  gf'8 gf gf gf-. r ef df bf	 |
  df8 df df df df df df df |
  df8 df c c bf bf c c \bar "||"
  
  \break
  \mark \markup { \bold { [A] } \musicglyph #"scripts.segno" (No Repeat on D.S.) }
  \repeat volta 2 {
    \bar ".|:"
    %% 11
    af8 af af'\2 af\2 r8 f ef c |
    gf8 gf gf' gf-. r ef df bf |
    df8 df df df df df df df |
    df8 df c c bf bf c c |
    
    %% 15
    af8 af  af'\2 af-.\2 r f ef c |
    gf gf gf' gf-. r8 ef df bf |
    df8 df df df df df df df |
    df8 df c c bf bf c c \bar "||"
    
    %% 19
    \break
    \mark \markup { \bold { [B] } }
    e8\3 \f e8\3 e8\3 e8\3 e8\3 fs8\3 e4\3 | 
    df8 df df df df ef\3 df4 |
    a8 \cresc a a a a b a a |
    ef'8\3 ef\3 ef\3 ef\3 ef\3 ef\3 ef\3 ef\3 \! \bar "||"
    
    %% 23
    \mark \markup { \bold { [C] } }
    af,8 \mf af af af af af af af |
    df8 df df df df df df df |
  } \alternative {
    %% 1
    {
      af8 af af af af af af af |
      af8 af af af af af af af |
    }
    %% 2
    {
      \break
      af8 af af af af af af af |
    }
  }
  
  %% 28
  \mark \markup { \bold { [D] } }
  e'8\3 \f e\3 e\3 e\3 e\3 fs\3 e4\3 |
  df8 df df df df ef\3 df4 |
  a8 a a a a b a4 |
  ef'8\3 ef\3 ef\3 ef\3 ef\3 ef\3 ef\3 ef\3 |
  
  \mark \markup { \bold { [E] } }
  af,8 \mf af af af af af af af |
  df8 df df df df df df 
  \mark \markup { To Coda \musicglyph #"scripts.coda" } 
  df
  \bar "||"
  
  %% 34
  \break
  af8 af af af af af af af |
  \appoggiatura g'8\3 af8\3 af\3 af\3 af\3 af\3 af\3 af\3 af\3 \bar "||"
  
  %% 36
  \break
  \mark \markup { \bold { [F] } }
  af4\3-> af'8 g8 af8 g8 ef8\2 ef8\2 | 
  \repeat unfold 3 {
    af,8\3 af8\3 af' g8 af g8 ef\2 ef\2 \bar "||"
  }
  
  %% 40
  \break
  \mark \markup { \bold { [G] } }
  \repeat unfold 7 {
    af,8\3 af8\3 af' g8 af g8 ef\2 ef\2 |
  }
  af,4\3-- r4 r4
  af8\3 \glissando 
  \deadNote a,8\3_\markup { \bold { D.S. al Coda } }
  \bar "||"
  
  %% Coda / 48
  \break
  \mark \markup	 { Coda \musicglyph #"scripts.coda" } 
  af8 af af af af af af af |
  df8 df df df df df df df |
  af8 af af af af af af af |
  df8 df df df df df df df |
  af1-> \fermata \bar "|."
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  s1 | s1 | s1*3 | s1 |
  af | gf:9 | df | s1 |
  \repeat volta 2 {
    af1 | gf1:9 | df1 | s1 |
    af1 | gf:9 | df1 | s1 |
    e1 | df1 | a1:maj7 | ef1 |
    af1 | df1
  } \alternative {
    %% 1
    {
      af | s1 |
    }
    %% 2
    {
      af |
    }
  }
  e1 | df1 | a1 |
  ef1 | af1 | df1 |
  af1 | s1 |
  af1 | s1 | s1 | s1 |
  af1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
  af1 | df1 | af1 | df1 |
  af1 |
}

ticktock = \drummode {
  \repeat unfold 40 {
    hiwoodblock 4 lowoodblock lowoodblock lowoodblock
  }
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
      \Score \override StringNumber #'stencil = ##f 
    }
  }
}

\score {
  \removeWithTag #'scoreOnly \unfoldRepeats \my_music
  \midi {}
}
