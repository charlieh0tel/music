% LilyBin

\version "2.18.0"
\include "english.ly"
\include "../lib/dsmarks.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Here Comes The Rain Again" }
  opus = \markup { \italic "Eurythmics" }
}

\paper { 
  left-margin = 1 \in	
  right-margin = 1 \in
  top-margin = 1.0 \in
  bottom-margin = 1.0 \in
}

#(set-global-staff-size 18)
		
cbreak = { 
  \break
} 
sbreak = { \break }


global = {
  \time 4/4
  \tempo 4 = 128
  \override Glissando.style = #'zigzag
}

my_notes = \relative c, {
  \clef "bass_8"
  \key c \major

  r1 | r1 |
  \sbreak
  
  \set Score.currentBarNumber = #1
  
  \repeat volta 2 {
    \mark \markup { "Intro" }
    a'8\2 a\2 a\2 g\2 g\2 g\2 a\2 a\2 | r4 r8 g8\2 g\2 g\2 a\2 a\2 | f8\2 f\2 f\2 g\2 g\2 g\2 a\2 a\2 | r4 r8 g8\2 g\2 g\2 a\2 a\2 |
    \cbreak
    g8\2 g\2 g\2 f\2 f\2 f\2 g\2 g\2  | r4 r8 f8\2 f\2 f\2 g\2 g\2 | a8\2 a\2 a\2 g\2 g\2 g\2 a\2 a\2 | r4 r8 g8\2 g\2 g\2 a\2 a\2 |
  }
  \repeat volta 2 {
    \mark \markup { "Verse" }
    a8\2 a\2 a\2 g\2 g\2 g\2 a\2 a\2 | r4 r8 g8\2 g\2 g\2 a\2 a\2 | f8\2 f\2 f\2 g\2 g\2 g\2 a\2 a\2 | r4 r8 g8\2 g\2 g\2 a\2 a\2 |
    \cbreak
    g8\2 g\2 g\2 f\2 f\2 f\2 g\2 g\2  | r4 r8 f8\2 f\2 f\2 g\2 g\2 | a8\2 a\2 a\2 g\2 g\2 g\2 a\2 a\2 | r4 r8 g8\2 g\2 g\2 a\2 a\2 |

    a8\2 a\2 a\2 g\2 g\2 g\2 a\2 a\2 | r4 r8 g8\2 g\2 g\2 a\2 a\2 | f8\2 f\2 f\2 g\2 g\2 g\2 a\2 a\2 | r4 r8 g8\2 g\2 g\2 a\2 a\2 |
    \cbreak
    g8\2 g\2 g\2 f\2 f\2 f\2 g\2 g\2  | r4 r8 f8\2 f\2 f\2 g\2 g\2 | a8\2 a\2 a\2 g\2 g\2 g\2 a\2 a\2 | r4 r8 g8\2 g\2 g\2 a\2 a\2 |

    \sbreak
    \mark \markup { "Chorus" }
    f,8 f f f f f f f | f8 f f f f f f f | c'8 c c c c c c c | c8 c c c c c c c |
    \cbreak
    f,8 f f f f f f f | f8 f f f f f f f | c'8 c c c c c c c | c8 c c c c c c c |
    \cbreak
    f,8 f f f f f f f | f8 f f f f f f f | c'8 c c c c c c c | c8 c c c c c c c |
    \cbreak
    d8\3 d\3 d\3 d\3 d\3 d\3 d\3 d\3 | d8\3 d\3 d\3 d\3 d\3 d\3 d\3 d\3 | 
    \cbreak
    g8\3 g\3 g\3 g\3 g\3 g\3 g\3 g\3 | g4\3 r4 r2 | 
  }
  
  \sbreak
  \mark \markup { "Bridge" }
  e,8 e e e e e e e | f8 f f f f f f f | a8\4 a\4 a\4 a\4 a\4 a\4 a\4 a\4 | a8\4 a\4 a\4 a\4 a\4 a\4 a\4 a\4 |
  e8 e e e e e e e | f8 f f f f f f f | g8 g g g g g g g | g8 g g g g g g g |
  
  \sbreak
  \mark \markup { "Half Chrous" }
  f8 f f f f f f f | f8 f f f f f f f | c'8 c c c c c c c | c8 c c c c c c c |
  \cbreak
  d8\3 d\3 d\3 d\3 d\3 d\3 d\3 d\3 | d8\3 d\3 d\3 d\3 d\3 d\3 d\3 d\3 | 
  \cbreak
  g8\3 g\3 g\3 g\3 g\3 g\3 g\3 g\3 | g4\3 r4 r2 | 

  \sbreak
  \repeat volta 2 {
    \mark \markup { "Outro" }
    a8\2 a\2 a\2 g\2 g\2 g\2 a\2 a\2 | r4 r8 g8\2 g\2 g\2 a\2 a\2 | f8\2 f\2 f\2 g\2 g\2 g\2 a\2 a\2 | r4 r8 g8\2 g\2 g\2 a\2 a\2 |
    \cbreak
    g8\2 g\2 g\2 f\2 f\2 f\2 g\2 g\2  | r4 r8 f8\2 f\2 f\2 g\2 g\2 | a8\2 a\2 a\2 g\2 g\2 g\2 a\2 a\2 | r4 r8 g8\2 g\2 g\2 a\2 a\2 |
  }

}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  r1 | s1 |
  \repeat volta 2 {
    a:min | a:min | f | f |
    g | g |
    a:min | a:min |
  }
  \repeat volta 2 {
    a:min | a:min | f | f |
    g | g |
    a:min | a:min |

    a:min | a:min | f | f |
    g | g |
    a:min | a:min |
    
    f | f | c | c |
    f | f | c | c |
    f | f | c | c |
    d | d | g | g 
  }
  e:min | f | a:min | a:min |
  e:min | f | g | g |
  f | f | c | c |
  d | d | g | g |
  \repeat volta 2 {
    a:min | a:min | f | f |
    g | g |
    a:min | a:min |
  }
  
}

ticktock = \drummode {
}


my_music = <<
  \new ChordNames {
    \set ChordNames.midiInstrument = "percussive organ"
    \set ChordNames.midiMaximumVolume = #0.4
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
    %\set TabStaff.minimumFret = #3
    %\set TabStaff.restrainOpenStrings = ##t
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
