% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "I'll Take You There" }
  opus = \markup { \italic "The	Staple Singers" }
}

\paper { 
  left-margin = 1.0 \in
  right-margin = 1.0 \in
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
  \tempo "Slow Soul" 4 = 100
}

my_notes = \relative c {
  \clef "bass_8"
  \key c \major
  
  c,-.-^ r4 r2 | r1 | f4.-> c8-.-^ r2 | r1 | f4.-> c8-.-^ r2 \bar "||"
  
  \sbreak
  \mark \markup { Riff }
  c4-. r8 c8-. r8 g16 a16 c8-. a16 g16 | f4-. f'4-. g,8 a8 c8 a8 \bar "||"
  
  \sbreak
  \mark \markup { Bass Solo }
  e''2.-> \grace g8 (a8) g8 | \grace e8 (f8) c8\2 f,4\3 ~f4 a8\2 d8 |
  c8\2 g8\3 c,4\4 ~ c4 a'8\3 c16\2 d16\2 | c1\2 |
  
  \cbreak
  e2.-> \grace g8 (a8) g8 | \grace e8 (f8) c8\2 f,4\3 ~f4 a8\2 d8 |
  c8\2 g8\3 c,4\4 ~ c4 | c2\4 ~ c8 g8 a8 g8 \bar "||"
  
  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

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
    \set TabStaff.minimumFret = #1
    \set TabStaff.restrainOpenStrings = ##t
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
