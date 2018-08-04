% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "The Tears of a Clown" }
  opus = \markup { \italic "The Miracles" }
}

\paper { 
  left-margin = 1.0\in
  right-margin = 0.5\in
}

mBreak = { 
  %%\break 
}
cBreak = {
  \break
}

global = {
  \time 4/4
  \tempo 4 = 130
}

my_notes = \relative c, {
  \clef "bass_8"
  
  \key f \major

  r1 |
  r1 |
  r1 |
  r2 r4 r8 c8->~ \f |

  %% 5
  \mBreak
  c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
  bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
  c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
  bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |

  \repeat volta 2 {
    %% 9
    \mBreak \cBreak
    \mark \default
    c8 \mf d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
    bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
    c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
    bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
    
    %% 13
    \mBreak
    c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
    bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
    c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
    bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |

    %% 17
    \mBreak
    c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
    bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
    c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
    bf8 c8 d8 f8-> ~f8 d8 c8 g8-. |

    %% 21
    \mBreak
    c4-> \f g'8 c8 f,4.-> f8 |
    bf,4-> f'8 f,8-> ~f8 c'8 c8 c8 | 
    c4-> g'8 c8 f,4.-> f8 |
    bf,4-> f'8 f,8-> ~f8 c'8 c8 c8 | 

    %% 25
    \mBreak
    c4-> g'8 c8 f,4.-> f8 |
    bf,4-> f'8 f,8-> ~f8 c'8 c8 c8 | 
    c4-> g'8 c8 f,4.-> f8 |
    bf,4-> f'8 f,8-> ~f8 c'8 c8 c8 | 

    %% 29
    \mBreak \cBreak
    \mark \default
    g'8 g8 g8 g8 g8 g8 g8 g8 |
    gs8 gs8 gs8 gs8 gs8 gs8 gs8 gs8 |
    a8 a8 a8 a8 a8 a8 a8 a8 |
    f,2 f'4. r8 |

    %% 33
    \mBreak

    r1 \mf |
    r1 |
    r1 |
    r2 r4 r8 c8->~ |    
  } \alternative {
    {     
      %% 37
      \mBreak
      c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
      bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
      c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
      bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
    }
    {
      %% 41
      \mBreak \cBreak
      \mark \default
      c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
      bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
      c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
      bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
    }
  }
  
  %% 45
  \mBreak
  c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
  bf8 c8 d8 f8-> ~f8 d8 c8 c8->~ |
  c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
  bf8 c8 d8 f8-> ~f8 d8 c8 g8-. |    %% CHECK last note
  
  %% 49
  \mBreak

  r1 |
  r2 r4 r8 c8->~ |
  
  \repeat volta 2 {
    \bar "[|:"
    c8 d8 e8 f8-> ~f8 g,8 a8 bf8->~ |
    bf8 c8 d8 f8-> ~f8 d8 c8 c8->~
    \bar ":|]"
  }  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  c1 | s1 | s1 | s1 |
  %% 5
  c2 f2 | bf2 f2 | 
  c2 f2 | bf2 f2 | 
  \repeat volta 2 {
    %% 9
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    c2 f2 | bf2 f2 |
    g1 | e:7/gs | a:m | f:maj7
    c1 | s1 | s1 | s1
  } \alternative {
    {
      c2 f2 | bf2 f2 | c2 f2 | bf2 f2 |
    }
    {
      c2 f2 | bf2 f2 | c2 f2 | bf2 f2 |
    }
  }
  
  %% 45
  c2 f2 | bf2 f2 | c2 f2 | bf2 f2 |
  c1 | s1 |
  
  \repeat volta 2 {
    c2 f2 | bf2 f2 |
  }
  
}

% Create metronome ticks. This example assumes 4/4 .
ticktock = \drummode {
  %% 1-8
  \repeat unfold 8 {
    hiwoodblock 4 lowoodblock lowoodblock lowoodblock
  }
  \repeat volta 2 {
    %% 9-36
    \repeat unfold 28 {
      hiwoodblock 4 lowoodblock lowoodblock lowoodblock
    }
  } \alternative {
    {
      %% 37-40
      \repeat unfold 4 {
	hiwoodblock 4 lowoodblock lowoodblock lowoodblock
      }
    }
    {
      %% 41-44
      \repeat unfold 4 {
	hiwoodblock 4 lowoodblock lowoodblock lowoodblock
      }
    }
  }
  
  %% 45-50
  \repeat unfold 6 {
    hiwoodblock 4 lowoodblock lowoodblock lowoodblock
  }

  %% 51
  \repeat volta 2 {
    hiwoodblock 4 lowoodblock lowoodblock lowoodblock
    hiwoodblock 4 lowoodblock lowoodblock lowoodblock
  }
}


my_music = <<
  \new ChordNames = Chords {
    \set ChordNames.midiInstrument = "percussive organ"
    \set ChordNames.midiMaximumVolume = #0.2
    \set chordChanges = ##t
    \global
    \my_chords
  }
  \new Staff {
    \set Staff.midiInstrument = #"electric bass (finger)"
    \set staff.midiMinimumVolume = #0.5
    \set Staff.midiMaximumVolume = #0.9
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
    \set Score.markFormatter = #format-mark-box-alphabet
    \context {
      \Score
    }
  }
}

\score {
  \removeWithTag #'scoreOnly \unfoldRepeats \my_music
  \midi {}
}

