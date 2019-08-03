% LilyBin

\version "2.18.0"
\include "english.ly"

% If swing needed
%#(load "../scm/swing.scm")

\header {
  piece = \markup { \fontsize #4 \bold "Scarlet Begonias" }
  opus = \markup { \italic "Hunter/Garcia" }
}

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
}

  
global = {
  % \tempo "" 4 = xx
  \time 4/4
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
}

my_notes = \relative c {
  \clef "bass_8"
  \key b \major

  \repeat volta 2 {
     b,4 b b b |
     b b e, e |
     b' b b b |
     b b a a |
  }
  
  \break
  \repeat volta 3 { 
    \repeat unfold 2 {
      e4 e e e |
      b' b b b |
      b4 r8 cs8 ds4\3 r8 fs8 |
      r8 fs8 gs8\2 fs8 a4\2 r4 |
    }
    \break
    a,4 a a a |
    e e b' b | 
    a a a a | 
    e e e e |
    \break
    a a a a |
    e e b' b |
    a a a a |
    e e e e |
    \break
    b' b b b |
    b b e, e |
  } \alternative {
    {
      b' b b b |
      b b a a |
    }
    {
      b b b r8 b8 |
      r8 b8 as4 gs4 g4 |
    }
  }
  \break
  fs4 fs fs fs |
  fs4 fs fs fs |
  b4 b b b |
  \time 2/4 a4 a4 |
  \time 4/4 e4 r8 fs8 gs4 r8 b8 |
  r8 b8 cs8 b8 e4 r4 |
  e,4 r8 fs8 gs4 r8 b8 |
  r8 b8 cs8 b8 e4 r4 |
  fs,4 fs fs fs |
  fs4 fs fs fs |
  b4 b b b |
  \time 2/4 a4 a |
  \break
  \time 4/4 e4 r8 fs8 gs4 r8 b8 |
   r8 b8 cs8 b8 e4 r4 |
   fs,4 r8 gs8 as4\4 r8 cs8 |
   r8 cs8 ds8\3 cs8 fs4 r4 |
   
   \break
   a,4 r8 b8 cs4 r8 e8 |
   r8 e8 fs8 e8 a4 r4 |
   b,4 r8 cs8 ds4\3 r8 fs8 |
   r8 fs8 gs8 fs8 b4 r4 |
   b,4 b b b |
   b4 b b b |

   %% coda
  \break
  r1 | r1 |
  \repeat volta 2 {
    b4 r8 ds fs8 b8 r8 a8 |
    r4 r8 fs8 a8\2 cs8 r8 b8 |
    r4 r8 a8\2 cs8 e8 r8 ds8 |
    r8 ds8 b4\2 gs8\2 gs8\2 e4\3 |
  }
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  \repeat volta 2 {
    b1 | s2 e2 | b1 | s2 a2 |
  }
 
  \repeat volta 3 {
    e1 | s2 b2 | s1 | s1 |
    e1 | s2 b2 | s1 | s1 |
    a1 | e2 b2 | a1 | e1 |
    a1 | e2 b2 | a1 | e1 |
    b1 | s2 e2 |   
  } \alternative {
    { 
      b1 | s2 a2 | 
    }
    { 
      b1 | s1 | 
    }
  }
  fs1 | s1 | b1 |
  \time 2/4 a2 |
  \time 4/4 e1 | s1 |
  e1 | s1 |
  fs1 | s1 |
  b1 |
  \time 2/4
  a2
  \time 4/4
  e1 | s1 |
  fs1 | s1 |
  a1 | s1 | 
  b1 | s1 |
  b1 | s1 |
  
  %% coda
  s1 | s1 |
  \repeat volta 2 {
    s1 | s1 | s1 | s1 |
  }
}

ticktock = \drummode {
  %\repeat unfold 40 {
  %  hiwoodblock 4 lowoodblock lowoodblock lowoodblock
  %}
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
