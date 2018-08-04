% LilyBin

\version "2.18.0"

\header {
  piece = \markup { \fontsize #4 \bold "I Want You Back" }
  opus = \markup { \italic "The Jackson 5" }
}

\paper { 
  left-margin = 1.0 \in
  right-margin = 0.5 \in
}

mBreak = { \break }

global = {
  \time 4/4
  \tempo "Pop/Disco" 4 = 100
}

my_notes = \relative c {
  \clef "bass_8"
  \key aes \major

  \partial 4 r4 \bar "||" |

  aes,4-.-> \mf r4 r8. bes16 c16-> ees16 f16 des16-> |
  r2 r16 bes16 ces16 des16-> ~des16 d16 ees16 e16 |
  f4-> c4-> des8.-> aes16-> ~aes8 r8 |
  bes4->\4 ees8.->\3 aes,16-> r2 \bar "||"
  
  %% 5
  \mBreak
  \mark \markup { \bold { [A] } }
  aes4-.-> \mf \cresc r4 r8. bes16 c16-> ees16 f16 des16-> |
  r2 r16 bes16 ces16 des16-> ~des16 d16 ees16 e16 \f |
  f4-> c4-> des8.-> aes16-> ~aes8 r8 |
  bes4->\4 \< ees8.->\3 aes,16-> \! r2 \bar "||"

  %% 9
  \mBreak
  \mark \markup { \bold { [B] } \italic { (Vocals) } }
  aes'8.->\2 \f aes16\2 g8.->\2 g16\2 f16\2 f8-> ees16-> ~ ees16 c16 ees16 c16 |
  des8.-> des16 c8.-> c16 bes16 bes8-> ees16-> ~ees16 d16 ees16 e16 |
  
  %% 11
  \mBreak
  f8.-> f16 c4-> des16-> des8-> aes16-> ~aes8 r8 |
  bes4->\4 ees8.->\3 aes,16-> r8 \> ees'16\3 f16\3 aes16\2 f16\3 aes8-.\2 
  \bar "||"  % doesn't work
  
  \repeat volta 2 {
    %% 13
    \mBreak
    \mark \markup { \bold { [C] } }
    \bar "[|:"
    aes,4-.->  \mf r4 r8. bes16 c16-> ees16 f16 des16-> |
    r2 r16 bes16 ces16 des16-> ~des16 d16 ees16 e16 |
    f4-> c4-> des8.-> aes16-> ~aes8 r8 |
    bes4->\4 ees8.->\3 aes,16->\4 r2
    
    %% 17
    \mBreak
    aes4-.->  \mf r4 r8. bes16 c16-> ees16 f16 des16-> |
    r2 r16 bes16 ces16 des16-> ~des16 d16 ees16 e16 |
    f4-> c4-> des8.-> aes16-> ~aes8 r8 |
    bes4->\4 \< ees8.->\3 aes,16->\4 r8 ees'16\3 f16\3 aes16\2 f16\3 aes8-.\2 \! \bar "||"
    
    %% 21
    \mBreak
    \mark \markup { \bold { [D] } }
    aes8.->\2 \f aes16\2 g8.->\2 g16\2 f16\2 f8-> ees16-> ~ ees16 c16 ees16 c16 |
    des8.-> des16 c8.-> c16 bes16 bes8-> ees16-> ~ees16 d16 ees16 e16 |
    
    %% 23
    \mBreak
    f8.-> f16 c4-> des16-> des8-> aes16-> ~aes8 r8 |
    bes4->\4 ees8.->\3 aes,16->\4 r8 ees'16\3 f16\3 aes16\2 f16\3 aes8-.\2 |
    
    %% 25
    \mBreak
    aes8.->\2 aes16\2 g8.->\2 g16\2 f16\2 f8-> ees16-> ~ ees16 c16 ees16 c16 |
    des8.-> des16 c8.-> c16 bes16 bes8-> ees16-> ~ees16 d16 ees16 e16 |
    
  } \alternative {
    { 
      %% 27
      \mBreak
      f8.-> f16 c4-> des16-> des8-> aes16-> ~aes8 r8 |
      bes4->\4 ees8.->\3 aes,16-> r16 aes16-> r16 aes16-> aes4-> \bar "||"
      
      %% 29
      \mBreak
      r2 r16 aes16-> aes16-> aes16-> aes4-.-> |
      r2 r16 aes16-> aes16-> aes16-> aes4-.-> |
      r2 r16 aes16-> aes16-> aes16-> aes4-.-> |
      \time 2/4 r2
      \bar ":|]" 
    }
    {
      %% 33
      \mBreak
      \time 4/4
      f'8.-> f16 c4-> des16-> des8-> aes16-> ~aes8 r8 |
      r1 |
      r2 r4 r16 f'16\3 aes16\2 c,16->~\4 \bar "||"
    }
  }

  %% 36
  \mBreak
  c4\4 r16 ees16\3 f16\3 aes,16-> ~aes4 r16 f'16\3 aes16\2 c,16->~\4 |
  c4 r16 ees16\3 f16\3 aes,16-> ~aes4 r4 \bar "||"
  
  %% 38
  \mBreak
  \mark \markup { \bold { [F] } }
  f'16->\3 aes16\2 c16 c,16->\4 ~c16 ees16\3 aes16\2 des,16-> ~des16 f16\3 aes16\2 aes,16->\4
    ~aes16 c16\4 ees8\3 |
  f16->\3 aes16\2 c16\1 c,16->\4 ~c16 ees16\3 aes16\2 des,16->\3 ~des16 f16\3 aes16\2 aes,16-> 
    ~aes16 c16\4 ees8\3 |
  
  %% 40
  \mBreak
  f16->\3 aes16\2 c16 c,16->\4 ~c16 ees16\3 aes16\2 des,16-> ~des16 f16\3 aes16\2 aes,16->\4 
    ~aes16 c16\4 ees8\3 |
  f16->\3 aes16\2 c16\1 c,16->\4 ~c16 ees16\3 aes16\2 des,16->\3 ~des16 f16\3 aes16\2 aes,16-> 
    ~aes16 c16\4 ees8\3 \bar "||"
  
  \repeat volta 2 {
    %% 42
    \mBreak
    \bar "[|:"
    \mark \markup { \bold { [G] } }
    \set TabStaff.minimumFret = 1
    aes8.->\2 aes16\2 g8.->\2 g16\2 f16 f8-> ees16-> ~ ees16 c16 ees16 c16 |
    des8.-> des16 c8.-> c16 bes16 bes8-> ees16-> ~ees16 d16 ees16 e16 |
    
    %% 44
    \mBreak
    f8.-> f16 c4-> des16-> des8-> aes16-> ~aes8 r8 |
    bes4->\4 ees8.->\3 aes,16-> r16 aes16-> aes16-> aes16-> aes4-.-> |
    
    %% 46
    \mBreak
    r2 r16 aes16-> aes16-> aes16-> aes4-.-> |
    \time 2/4 r4 ees'16->\3 f16\3 aes16\2 f16\3
    \bar ":|]"
  }
  
  %% 48
  \mBreak
  \time 4/4
  \mark \markup { \bold { [H] } }
  aes8.->\2 aes16\2 g8.->\2 g16\2 f16\2 f8-> ees16-> ~ ees16 ees16 ees8-. |
  des16-> aes'16\2 des16 c,16-> ~ c16 c16 c16 bes16-> ~bes16 bes16 bes16 bes16
    ees8-> ees16-> e16 | 
  
  %% 50
  \mBreak
  f8.-> f16 c8.-> c16 des16-> des8-> aes16-> ~aes8 r8 |
  bes8.->\4 bes16-.\4 ees4->\3 r16 \ff aes,16-> aes16-> aes16-> aes4-.-^ |
  %% \bar "|]" 
  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  \partial 4 s4 |

  aes16*15 des16 | s1 |
  f4:m c4:m des8. aes16*3 s8 | bes4:m7 ees8.:7 aes16 s2 |
  
  %% 5
  aes16*15 des16 | s1 |
  f4:m7 c4:m des8. aes16*3 s8 | bes4:m7 ees8.:7 aes16 s2 |
  
  %% 9
  aes4 ees4/g f8.:m7 ees16*5 | des4 des4/c bes8.:m7 ees16*5 |
  
  %% 11
  f4:m7 c4:m des8. aes16*3 s8 | bes4:m7 ees8.:7 aes16 s2 |

  \repeat volta 2 {
    %% 13
    aes16*15 des16 | s1 |
    f4:m c4:m des8. aes16*3 s8 | bes4:m7 ees8.:7 aes16 s2 |
  
    %% 17
    aes16*15 des16 | s1 |
    f4:m7 c4:m des8. aes16*3 s8 | bes4:m7 ees8.:7 aes16 s2 |
  
    %% 21
    aes4 ees4/g f8.:m7 ees16*5 | des4 des4/c bes8.:m7 ees16*5 |
    
    %% 23
    f4:m7 c4:m des8. aes16*3 s8 | bes4:m7 ees8.:7 aes16 s2 |
  
    %% 25
    aes4 ees4/g f8.:m7 ees16*5 | des4 des4/c bes8.:m7 ees16*5 |
  } \alternative {
    {
      %% 27
      f4:m7 c4:m des8. aes16*3 s8 | bes4:m7 ees8.:7 aes16 s2 |
      s1 | s1 | s1 |
      \time 2/4 s2 |
    }
    {
      %% 33
      \time 4/4
      f4:m7 c4:m des8. aes16*3 s8 | s1 | s1 |
    }
  }
  
  %% 36
  f4:m7 c:m7 des:6 aes | f:m7 c:m7 des:6 aes |
  
  %% 38
  f4:m7 c:m7 des:6 aes | f:m7 c:m7 des:6 aes |
  
  %% 40
  f4:m7 c:m7 des:6 aes | f:m7 c:m7 des:6 aes |
  
  %% 42
  \repeat volta 2 {
    aes4 ees4/g f8.:m7 ees16*5 | des4 des4/c bes8.:m7 ees16*5 |
    
    %% 44
    f4:m7 c:m des:6 aes | bes:m7 ees8.:7 aes16 s2 | 
    
    %% 46
    s1 |
    \time 2/4 s2 |
  }
  
  %% 48
  \time 4/4
  aes4 ees4/g f8.:m7 ees16*5 | des4 des4/c bes8.:m7 ees16*5 |
  f4:m7 c:m des:6 aes | bes:m7 ees8.:7 aes16 s2 |
}

ticktock = \drummode {
  \partial 4 r4 |

  \repeat unfold 12 {
    hiwoodblock 4 lowoodblock lowoodblock lowoodblock
  }
  
  \repeat volta 2 {
    %% 13-26
    \repeat unfold 14 {
      hiwoodblock 4 lowoodblock lowoodblock lowoodblock
    }
  } \alternative {
    { 
      %% 27-31
      \repeat unfold 5 {
	hiwoodblock 4 lowoodblock lowoodblock lowoodblock
      }
      %% 32
      \time 2/4
      hiwoodblock 4 lowoodblock
    }
    {
      %% 33
      \time 4/4
      \repeat unfold 3 {
	hiwoodblock 4 lowoodblock lowoodblock lowoodblock
      }
    }
  }
  
  %% 36-41
  \repeat unfold 6 {
    hiwoodblock 4 lowoodblock lowoodblock lowoodblock
  }
  
  \repeat volta 2 {
    %% 42-46
    \repeat unfold 5 {
      hiwoodblock 4 lowoodblock lowoodblock lowoodblock
    }
    %% 47
    \time 2/4 hiwoodblock 4 lowoodblock
  }
  
  %% 48-51
  \time 4/4
  \repeat unfold 4 {
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
    \set staff.midiMinimumVolume = #0.7
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
