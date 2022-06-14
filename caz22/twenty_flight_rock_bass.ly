% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Twenty Flight Rock" }
}

\paper { 
  left-margin = 1.0 \in
  right-margin = 1.0 \in
  top-margin = 1.0 \in
  bottom-margin = 1.0 \in
}

#(set-global-staff-size 16)

cbreak = { 
  \break
} 

sbreak = { \break }

global = {
  \time 4/4
  %\tempo "Rock" 4 = 135
}

my_notes = \relative c {
  \clef "bass_8"
  \key a \major
  
  \mark \markup { Verse / Interlude Phrases }
  a,4\4 r8 c8 (cs4\3)  e4\3 |
  d4\3 r8 f8 (fs4\2) a4\2 |
  
  \cbreak
  e,4\4 r8 g8 (gs4) b4\4 | e,4\4 r8 g8 (gs4) b4\4 | a\4 r2. |
  
  \sbreak
  \mark \markup { Chorus }
  a4\4 cs e\3 fs | a\2 fs e\3 cs |
  a4\4 cs e\3 fs | a\2 fs e\3 cs |
  
  \cbreak
  d\3 fs a\2 fs | d\3 fs a\2 fs |
  a,4\4 cs e\3 cs | a\4 cs d\3 ds\3  |
  \cbreak
  e\3 gs\2 b\2 gs\2 | 
  d\3 fs a\2 fs |
  a,4\4 cs e\3 cs |
  
  \sbreak
  \mark \markup { Chorus (Variation) }
  a4\4 cs e\3 fs | a\2 fs e\3 cs |
  a4\4 cs e\3 fs | a\2 g\2 fs\2 e\3 |
  
  \cbreak
  d\3 fs, a\2 b\3 | d\3 fs, g gs |
  a4\4 cs e\3 fs\2 | a\2 fs e\3 cs\3  |
  \cbreak
  e\3 gs\2 b\2 gs\2 | 
  d\3 fs a\2 fs |
  a,4\4 cs e\3 cs |
   
 
}

my_chords = \chordmode {
  a1 | d1 |
  e1 | e1 | a1
  
  a1 | a | a | a | d | d | a | a | e | d | a |
  a1 | a | a | a | d | d | a | a | e | d | a
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
