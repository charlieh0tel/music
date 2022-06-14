\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Back on the Chain Gang" }
  opus = \markup { \italic "The Pretenders" }
}

\paper { 
  left-margin = 1.0 \in
  right-margin = 0.5 \in
  top-margin = 1.0 \in
  bottom-margin = 1.0 \in
}

global = {
  \time 4/4
  % \tempo "Pop rock" 4 = 118
}

sbreak = { \break  }
cbreak = { \break }

my_notes = \relative c {
  \clef "bass_8"
  \key d \major
 
  r1 | r1 | r1 | 
  \time 3/4 
  r2. | 
  
  \time 4/4
  \sbreak
  \repeat volta 3 {
    d,4. fs4. a4 | a,4. cs4. e4 | e,4. fs4. g4 | b4. g4. \mark \markup { x3 } b4 
  }
 
  \sbreak
  \repeat volta 2 {
    d4. fs4. a4 | a,4. cs4. e4 | e,4. fs4. g4 | b4. g4. b4 |
    \cbreak
    d4. fs4. a4 | a,4. cs4. e4 | e,4. fs4. g4 | b4. g4. b4 |
    \cbreak
    d4. fs4. a4 | a,4. cs4. e4 | e,4. fs4. g4 | b4. g4. b4 |
    \cbreak
    d4. fs4. a4 | a,4. cs4. e4 | e,4. fs4. g4 | b2 g'8 b,8 d4 |
    \cbreak
    e2 fs8 e cs b | a4. e'8 fs a fs4 |
    e2 fs8 e cs b | a4. e'8 fs a fs4 |
    \cbreak
    e2 fs8 e cs b | a4. e'8 fs a fs4 |
  } \alternative {
    { 
      d2 a'8 fs a4 | a,2 e'8 cs e4 | \cbreak
      d2 a'8 fs a4 | a,2 e'8 cs e4 |
    }
    {
      e2 fs8 e cs b | a4. e'8 fs a fs e |
    }
  }

  \sbreak
  d4. fs4. a4 | a,4. cs4. e4 | e,4. fs4. g4 | b4. g4. b4 |
  \cbreak
  d4. fs4. a4 | a,4. cs4. e4 | e,4. fs4. g4 | b4. g4. b4 |
  \cbreak
  d4. fs4. a4 | a,4. cs4. e4 | e,4. fs4. g4 | b4. g4. b4 |

  \sbreak
  r4 d4 ~ d4 d4 ~ | d4 d4 ~ d4 d'4\2 \glissando |
  \repeat volta 10 {
    d,2 cs'8 d8 ~ d4 |
    a4 a,4 a'4 \mark \markup { x10 } a,4
  }
  
  \sbreak
  a4 a a a |
  \key e \major

  e'4. gs4. b4 | b,4. ds4. fs4 | a,4. cs4. e4 | b4. ds4. fs4 |
  \cbreak
  e4. gs4. b4 | b,4. ds4. fs4 | a,4. cs4. e4 | b4. ds4. fs4 |
  \cbreak
  e4. gs4. b4 | b,4. ds4. fs4 | a,4. cs4. e4 | b4. ds4. fs4 |
  \cbreak
  e4. gs4. b4 | b,4. ds4. fs4 | a,4. cs4. e4 | b4. ds4. fs4 |
  \cbreak
  e4. gs4. b4 | b,4. ds4. fs4 | a,4. cs4. e4 | b4. ds4. fs4 |
  
  \sbreak
  a,2 e'4 a,4 | b4. fs'8 gs8 b gs4 |  
  a,2 e'4 a,4 | b4. fs'8 gs8 b gs4 |  
  \cbreak
  a,2 e'4 a,4 | b4. fs'8 gs8 b gs4 |  
  \repeat volta 2 {
    e2 b'4 b4 |
    %\cadenzaOn \hideNotes g16 \glissando \unHideNotes \cadenzaOff b4
    %\cadenzaOn \hideNotes g16 \glissando \unHideNotes \cadenzaOff b4 | 
    b,2 fs'8 ds8 fs4 | 
  }
} 

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  
  d1 | a | e:min7 | 
  \time 3/4 
  s2. | 
  
  \time 4/4 
  \repeat volta 3 {
    d1 | a | e:min7 | g
  }
  
 \sbreak
  \repeat volta 2 {
    d1 | a | e:min7 | g |
    d1 | a | e:min7 | g |
    d1 | a | e:min7 | g |
    d1 | a | e:min7 | g |
    e1:min7 | a | e:min7 | a |
    e1:min7 | a |
  } \alternative {
    { 
      d1 | a | d | a |
    }
    { 
      d1 | a
    }
  }
  d1 | a | e:min7 | g |
  d1 | a | e:min7 | g |
  d1 | a | e:min7 | g |

  d1 | d1 |
  \repeat volta 10 {
    d1:min | a
  }
  
  a1 |
  \key e \major
  e1 | b  | a | b |
  e1 | b  | a | b |
  e1 | b  | a | b |
  e1 | b  | a | b |
  e1 | b  | a | b |
  a1 | b | a | b |
  a1 | b |
  \repeat volta 2 { e | b }
  
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
    %\set TabStaff.minimumFret = #1
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
