% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "I Want You Back" }
  opus = \markup { \italic "The Jackson 5" }
}

\paper { 
  left-margin = 1.0 \in
  right-margin = 0.5 \in
}

mBreak = {
  %% \break
}

cBreak = { \break }

global = {
  \time 4/4
  \tempo "Pop/Disco" 4 = 100
}

my_notes = \relative c {
  \clef "bass_8"
  \key af \major

  r1
  
    %% 25
    \mBreak
    af8.->\2 af16\2 g8.->\2 g16\2 f16\2 f8-> ef16-> ~ ef16 c16 ef16 c16 |
    df8.-> df16 c8.-> c16 bf16 bf8-> ef16-> ~ef16 d16 ef16 e16 |
    
      %% 33
      \mBreak \cBreak
      f'8.-> f16 c4-> df16-> df8-> af16-> ~af8 r8 |
      r1 |
      \cBreak
      r2 r4 r16 f'16\3 af16\2 c,16->~\4 \bar "||"

  %% 36
  \mBreak
  c4\3 r16 ef16\3 f16\3 af,16-> ~af4 r16 f'16\3 af16\2 c,16->~\4 |
  c4\4 r16 ef16\3 f16\3 af,16-> ~af4 r4 \bar "||"
  
  %% 38
  \mBreak
  \mark \markup { \bold { [F] } }
  f'16->\3 af16\2 c16\2 c,16->\4 ~c16 ef16\3 af16\2 df,16->\3 ~df16 f16\2 af16\2 af,16-> 
    ~af16 c16\3 ef8\3 |
  f16->\3 af16\2 c16\2 c,16->\4 ~c16 ef16\3 af16\2 df,16->\3 ~df16 f16\2 af16\2 af,16-> 
    ~af16 c16\3 ef8\3 |
  
  %% 40
  \mBreak
  f16->\3 af16\2 c16\2 c,16->\4 ~c16 ef16\3 af16\2 df,16->\3 ~df16 f16\2 af16\2 af,16-> 
    ~af16 c16\3 ef8\3 |
  f16->\3 af16\2 c16\2 c,16->\4 ~c16 ef16\3 af16\2 df,16->\3 ~df16 f16\2 af16\2 af,16-> 
    ~af16 c16\3 ef8\3
  \bar "||"
  
  \repeat volta 2 {
    %% 42
    \mBreak
    \bar "[|:"
    \mark \markup { \bold { [G] } }
    \set TabStaff.minimumFret = 1
    af8.->\2 af16\2 g8.->\2 g16\2 f16 f8-> ef16-> ~ ef16 c16 ef16 c16 |
    df8.-> df16 c8.-> c16 bf16 bf8-> ef16-> ~ef16 d16 ef16 e16 |
    
    %% 44
    \mBreak
    f8.-> f16 c4-> df16-> df8-> af16-> ~af8 r8 |
    bf4->\4 ef8.->\3 af,16-> r16 af16-> af16-> af16-> af4-.-> |
    
    %% 46
    \mBreak
    r2 r16 af16-> af16-> af16-> af4-.-> |
    \time 2/4 r4 ef'16->\3 f16\3 af16\2 f16\3
    \bar ":|]"
  }
  
  %% 48
  \mBreak \cBreak
  \time 4/4
  \mark \markup { \bold { [H] } }
  af8.->\2 af16\2 g8.->\2 g16\2 f16\2 f8-> ef16-> ~ ef16 ef16 ef8-. |
  df16-> af'16\2 df16 c,16-> ~ c16 c16 c16 bf16-> ~bf16 bf16 bf16 bf16
    ef8-> ef16-> e16 | 
  
  %% 50
  \mBreak
  f8.-> f16 c8.-> c16 df16-> df8-> af16-> ~af8 r8 |
  bf8.->\4 bf16-.\4 ef4->\3 r16 \ff af,16-> af16-> af16-> af4-.-^ |
  %% \bar "|]" 

}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  r1
  
    %% 25
    af4 ef4/g f8.:m7 ef16*5 | df4 df4/c bf8.:m7 ef16*5 |

      %% 33
      \time 4/4
      f4:m7 c4:m df8. af16*3 s8 | s1 | s1 |
  
  %% 36
  f4:m7 c:m7 df:6 af | f:m7 c:m7 df:6 af |
  
  %% 38
  f4:m7 c:m7 df:6 af | f:m7 c:m7 df:6 af |
  
  %% 40
  f4:m7 c:m7 df:6 af | f:m7 c:m7 df:6 af |
  
  %% 42
  \repeat volta 2 {
    af4 ef4/g f8.:m7 ef16*5 | df4 df4/c bf8.:m7 ef16*5 |
    
    %% 44
    f4:m7 c:m df:6 af | bf:m7 ef8.:7 af16 s2 | 
    
    %% 46
    s1 |
    \time 2/4 s2 |
  }
  
  %% 48
  \time 4/4
  af4 ef4/g f8.:m7 ef16*5 | df4 df4/c bf8.:m7 ef16*5 |
  f4:m7 c:m df:6 af | bf:m7 ef8.:7 af16 s2 |
}

ticktock = \drummode {

  %% rest
  hiwoodblock 4 lowoodblock lowoodblock lowoodblock
  
  %% 25
  \repeat unfold 2 {
    hiwoodblock 4 lowoodblock lowoodblock lowoodblock
  }

      %% 33
      \repeat unfold 3 {
	hiwoodblock 4 lowoodblock lowoodblock lowoodblock
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
