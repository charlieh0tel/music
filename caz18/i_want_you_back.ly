% LilyBin

\version "2.18.0"

\header {
  piece = \markup { \fontsize #4 \bold "I Want You Back" }
  opus = \markup { \italic "The Jackson 5" }
}

\paper { 
  left-margin = 1.0\in
  right-margin = 0.5\in
}

my_notes = \relative c {
  \clef "bass_8"
  \key aes \major
  \time 4/4
  %%\set Timing.beamExceptions = #'()
  %%\set Timing.baseMoment = #(ly:make-moment 1/4)
  %%\set Timing.beatStructure = #'(1 1 1 1)
  \tempo "Pop/Disco" 4 = 100

  \partial 4 r4 \bar "||" |

  aes,4-.-> \mf r4 r8. bes16 c16-> ees16 f16 des16-> |
  r2 r16 bes16 ces16 des16-> ~des16 d16 ees16 e16 |
  f4-> c4-> des8.-> aes16-> ~aes8 r8 |
  bes4->\4 ees8.->\3 aes,16-> r2 \bar "||"
  \break
  
  %% 5
  \mark \markup { \bold {[A]} }
  aes4-.-> \mf \cresc r4 r8. bes16 c16-> ees16 f16 des16-> |
  r2 r16 bes16 ces16 des16-> ~des16 d16 ees16 e16 \f |
  f4-> c4-> des8.-> aes16-> ~aes8 r8 |
  bes4->\4 \< ees8.->\3 aes,16-> \! r2 \bar "||"
  \break

  %% 9
  \mark \markup { \bold {[B]} \italic {(Vocals)} }
  aes'8.->\2 \f aes16\2 g8.->\2 g16\2 f16\2 f8-> ees16-> ~ ees16 c16 ees16 c16 |
  des8.-> des16 c8.-> c16 bes16 bes8-> ees16-> ~ees16 d16 ees16 e16 |
  \break
  
  %% 11
  f8.-> f16 c4-> des16-> des8-> aes16-> ~aes8 r8 |
  bes4->\4 ees8.->\3 aes,16-> r8 \> ees'16\3 f16\3 aes16\2 f16\3 aes8-.\2 
  \bar "||"  % doesn't work
  \break
  
  \repeat volta 2 {
    %% 13
    \mark \markup { \bold {[C]} }
    \bar "[|:"
    aes,4-.->  \mf r4 r8. bes16 c16-> ees16 f16 des16-> |
    r2 r16 bes16 ces16 des16-> ~des16 d16 ees16 e16 |
    f4-> c4-> des8.-> aes16-> ~aes8 r8 |
    bes4->\4 ees8.->\3 aes,16->\4 r2
    \break
    
    %% 17
    aes4-.->  \mf r4 r8. bes16 c16-> ees16 f16 des16-> |
    r2 r16 bes16 ces16 des16-> ~des16 d16 ees16 e16 |
    f4-> c4-> des8.-> aes16-> ~aes8 r8 |
    bes4->\4 \< ees8.->\3 aes,16->\4 r8 ees'16\3 f16\3 aes16\2 f16\3 aes8-.\2 \! \bar "||"
    \break
    
    %% 21
    \mark \markup { \bold {[D]} }
    aes8.->\2 \f aes16\2 g8.->\2 g16\2 f16\2 f8-> ees16-> ~ ees16 c16 ees16 c16 |
    des8.-> des16 c8.-> c16 bes16 bes8-> ees16-> ~ees16 d16 ees16 e16 |
    \break
    
    %% 23
    f8.-> f16 c4-> des16-> des8-> aes16-> ~aes8 r8 |
    bes4->\4 ees8.->\3 aes,16->\4 r8 ees'16\3 f16\3 aes16\2 f16\3 aes8-.\2 |
    \break
    
    %% 25
    aes8.->\2 aes16\2 g8.->\2 g16\2 f16\2 f8-> ees16-> ~ ees16 c16 ees16 c16 |
    des8.-> des16 c8.-> c16 bes16 bes8-> ees16-> ~ees16 d16 ees16 e16 |
    \break
    
  } \alternative {
    { 
      %% 27
      f8.-> f16 c4-> des16-> des8-> aes16-> ~aes8 r8 |
      bes4->\4 ees8.->\3 aes,16-> r16 aes16-> r16 aes16-> aes4-> \bar "||"
      \break
      
      %% 29
      r2 r16 aes16-> aes16-> aes16-> aes4-.-> |
      r2 r16 aes16-> aes16-> aes16-> aes4-.-> |
      r2 r16 aes16-> aes16-> aes16-> aes4-.-> |
      \time 2/4 r2
      \bar ":|]" 
      \break
    }
    {
      %% 33
      \time 4/4
      f'8.-> f16 c4-> des16-> des8-> aes16-> ~aes8 r8 |
      r1 |
      r2 r4 r16 f'16\3 aes16\2 c,16->~\4 \bar "||"
    }
  }
  \break
  
  %% 36
  c4\4 r16 ees16\3 f16\3 aes,16-> ~aes4 r16 f'16\3 aes16\2 c,16->~\4 |
  c4 r16 ees16\3 f16\3 aes,16-> ~aes4 r4 \bar "||"
  \break
  
  %% 38
  \mark \markup { \bold {[F]} }
  f'16->\3 aes16\2 c16 c,16->\4 ~c16 ees16\3 aes16\2 des,16-> ~des16 f16\3 aes16\2 aes,16->\3
    ~aes16 c16\4 ees8\3 |
  f16->\3 aes16\2 c16\1 c,16->\4 ~c16 ees16\3 aes16\2 des,16->\3 ~des16 f16\3 aes16\2 aes,16-> 
    ~aes16 c16\4 ees8\3 |
  \break
  
  %% 40
  f16->\3 aes16\2 c16 c,16->\4 ~c16 ees16\3 aes16\2 des,16-> ~des16 f16\3 aes16\2 aes,16->\3 
    ~aes16 c16\4 ees8\3 |
  f16->\3 aes16\2 c16\1 c,16->\4 ~c16 ees16\3 aes16\2 des,16->\3 ~des16 f16\3 aes16\2 aes,16-> 
    ~aes16 c16\4 ees8\3 \bar "||"
  \break
  
  \repeat volta 2 {
    %% 42
    \bar "[|:"
    \mark \markup { \bold {[G]} }
    \set TabStaff.minimumFret = 1
    aes8.->\2 aes16\2 g8.->\2 g16\2 f16 f8-> ees16-> ~ ees16 c16 ees16 c16 |
    des8.-> des16 c8.-> c16 bes16 bes8-> ees16-> ~ees16 d16 ees16 e16 |
    \break
    
    %% 44 
    f8.-> f16 c4-> des16-> des8-> aes16-> ~aes8 r8 |
    bes4->\4 ees8.->\3 aes,16-> r16 aes16-> aes16-> aes16-> aes4-.-> |
    \break
    
    %% 46
    r2 r16 aes16-> aes16-> aes16-> aes4-.-> |
    \time 2/4 r4 ees'16->\3 f16\3 aes16\2 f16\3
    \bar ":|]"
  }
  \break
  
  %% 48
  \time 4/4
  \mark \markup { \bold {[H]} }
  aes8.->\2 aes16\2 g8.->\2 g16\2 f16\2 f8-> ees16-> ~ ees16 ees16 ees8-. |
  des16-> aes'16\2 des16 c,16-> ~ c16 c16 c16 bes16-> ~bes16 bes16 bes16 bes16
    ees8-> ees16-> e16 | 
  \break
  
  %% 50
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
      s1 | s1 | s1 | s2 |
    }
    {
      % 33
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
    s1 | s2 |
  }
  
  %% 48
  aes4 ees4/g f8.:m7 ees16*5 | des4 des4/c bes8.:m7 ees16*5 |
  f4:m7 c:m des:6 aes | bes:m7 ees8.:7 aes16 s2 |
  
}

my_music = <<
  \new ChordNames \my_chords
  \new Staff {
    \set Staff.midiInstrument = #"electric bass (finger)"
    \my_notes
  }
  \new TabStaff
  \with { stringTunings = #bass-tuning } 
  { 
    %%\set TabStaff.minimumFret = #3f
    %%\set TabStaff.restrainOpenStrings = ##t
    \my_notes
  }
>>
  
\score {
  \my_music
  \layout {
    \context {
      \Score
      \override StringNumber #'stencil = ##f 
    }
  }
}

\score {
  \unfoldRepeats
  \my_music
  \midi {}
}

