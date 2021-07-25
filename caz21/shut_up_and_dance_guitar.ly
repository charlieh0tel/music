%%%
%%% https://en.wikipedia.org/wiki/Shut_Up_and_Dance_(Walk_the_Moon_song)

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Shut up and Dance" }
  opus = \markup { \italic "Walk the Moon" }
}

\paper { 
  left-margin = 1.0 \in
  right-margin = 0.5 \in
  top-margin = 1.0 \in
  bottom-margin = 1.0 \in
}

up = _\markup \translate #'(-.2 . 0) \rotate #90 "➛"
down = _\markup \translate #'(-.2 . 0) \rotate #-90 "➛"


global = {
  \time 4/4
  \tempo "Pop rock" 4 = 128
}

my_notes = \transpose cs cs \relative c {
  \clef "treble_8"
  \key cs \major
  
   %% Intro / Chorus
   \break
   \mark \markup { Intro/Chrous }
   \repeat volta 7 {
     es'8\4\up gs\3\down cs\2\up fs,\4\down gs\3\up cs\2\down fs,\4\up gs\3\down |
     es8\4 gs\3 cs\2 ds,\4 gs\3 cs\2 ds,\4 \mark \markup { x7 } gs\3  |
   }
   
   %%
   \break
   \mark \markup { \musicglyph #"scripts.segno" }
   \repeat percent 2 {
     cs,8\3-.->\down \deadNote cs16\3\down cs16\3->\up r8 cs8\3-.->\down r8 cs8\3-.->\down cs16\3->\down cs16\3\up r8  |
     cs8\3-.->\down \deadNote cs16\3\down cs16\3->\up r8 cs8\3-.->\down r8 cs8\3-.->\down cs16\3->\down cs16\3\up \deadNote cs16\3\down \deadNote cs16\3\up |
   }
   
   %%
   \break
   \mark \markup { Verse (with variations) }
   \repeat volta 7 {
     cs8\3-.-> \deadNote cs16\3 cs16\3-> r8 cs8\3-.-> r8 cs8\3-.-> cs16\3-> cs16\3 \mark \markup { x7 } r8  |
   }
   r8 <cs,\6 gs'\5> <cs\6 gs'\5> <c\6 gs'\5> <c\6 gs'\5> <as\6 f'\5> <as\6 f'\5> <gs\6 ds'\5> |
   \break
   r8 <gs'\4 cs\3 f\2> <gs\4 cs\3 f\2> <as\4 cs\3 fs\2> <as\4 cs\3 fs\2>4-.  \deadNote <gs\4 cs\3 fs\2> |
   \deadNote <gs\4 cs\3 fs\2>8 <gs\4 cs\3 f\2> <gs\4 cs\3 f\2> <gs\4 c\3 ds\2> <gs\4 c\3 ds\2>4-.  \deadNote <gs\4 c\3 ds\2> |
   \deadNote <gs\4 cs\3 fs\2>8 <gs\4 cs\3 f\2> <gs\4 cs\3 f\2> <as\4 cs\3 fs\2> <as\4 cs\3 fs\2>4-. \deadNote <as\4 cs\3 fs\2>8 <gs, ds' gs c ds gs>8-> ~ |
   <gs ds' gs c ds gs>4 <gs ds' gs c ds gs> <gs ds' gs c ds gs>8 <gs ds' gs c ds gs>8 <gs ds' gs c ds gs>4-.
   
   \break
   \mark \markup { Chorus (two guitar parts) }
   \repeat volta 4 {
     r8 <gs'\4 cs\3 f\2> <gs\4 cs\3 f\2> <as\4 cs\3 fs\2> <as\4 cs\3 fs\2>8  r4. |
     r8 <gs\4 cs\3 f\2> <cs,\5 gs'\4 cs\3 f\2> <gs'\4 c\3 ds\2>  <gs, ds' gs c ds>8 \mark \markup { x4 D.S.repeat } r4. |
   }
}

my_chords = \transpose cs cs \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  
  \repeat volta 7 {
    s1 | s1 |
  }
  
  \repeat percent 2 {
    s1 | s1 |
  }
  
  \repeat volta 7 {
     s1 |
  }
  
  s8 cs4:5 bs:5 as:5 gs8:5 |   
  s8 cs4:5 fs:5 s4. |
  s8 cs4:5 gs:5 s4. |
  s8 cs4:5 fs4.:5 s8 gs8:5 |
  gs1:5 |
  
  s8 cs4:5 fs:5 s4. |
  s8 cs4:5 gs:5 s4. |
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
    \set Staff.midiInstrument = #"electric guitar"
    \set Staff.midiMinimumVolume = #0.7
    \set Staff.midiMaximumVolume = #0.95
    \global
    \my_notes
  }
  \tag #'scoreOnly
  \new TabStaff
    \with { stringTunings = #guitar-tuning } 
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
