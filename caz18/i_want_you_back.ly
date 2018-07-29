% LilyBin

% I Want You Back - The Jackson 5

\version "2.18.0"

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
  bes4-> ees8.-> aes,16-> r2 \bar "||"
  \break
  
  %% 5
  \mark \markup { \bold {[A]} }
  aes4-.-> \mf \cresc r4 r8. bes16 c16-> ees16 f16 des16-> |
  r2 r16 bes16 ces16 des16-> ~des16 d16 ees16 e16 \f |
  f4-> c4-> des8.-> aes16-> ~aes8 r8 |
  bes4-> \< ees8.-> aes,16-> \! r2 \bar "||"
  \break

  %% 9
  \mark \markup { \bold {[B]} \italic {(Vocals)} }
  aes'8.-> aes16 g8.-> g16 f16 f8-> ees16-> ~ ees16 c16 ees16 c16 |
  des8.-> des16 c8.-> c16 bes16 bes8-> ees16-> ~ees16 d16 ees16 e16 |
  \break
  
  %% 11
  f8.-> f16 c4-> des16-> des8-> aes16-> ~aes8 r8 |
  bes4-> ees8.-> aes,16-> r8 \> ees'16 f16 aes16 f16 aes8-. 
  \bar "||"  % doesn't work
  \break
  
  \repeat volta 2 {
    %% 13
    \mark \markup { \bold {[C]} }
    \bar "[|:"
    aes,4-.->  \mf r4 r8. bes16 c16-> ees16 f16 des16-> |
    r2 r16 bes16 ces16 des16-> ~des16 d16 ees16 e16 |
    f4-> c4-> des8.-> aes16-> ~aes8 r8 |
    bes4-> ees8.-> aes,16-> r2
    \break
    
    %% 17
    aes4-.->  \mf r4 r8. bes16 c16-> ees16 f16 des16-> |
    r2 r16 bes16 ces16 des16-> ~des16 d16 ees16 e16 |
    f4-> c4-> des8.-> aes16-> ~aes8 r8 |
    bes4-> \< ees8.-> aes,16-> r8 ees'16 f16 aes16 f16 aes8-. \! \bar "||"
    \break
    
    %% 21
    \mark \markup { \bold {[D]} }
    aes8.-> aes16 g8.-> g16 f16 f8-> ees16-> ~ ees16 c16 ees16 c16 |
    des8.-> des16 c8.-> c16 bes16 bes8-> ees16-> ~ees16 d16 ees16 e16 |
    \break
    
    %% 23
    f8.-> f16 c4-> des16-> des8-> aes16-> ~aes8 r8 |
    bes4-> ees8.-> aes,16-> r8 ees'16 f16 aes16 f16 aes8-. |
    \break
    
    %% 25
    aes8.-> aes16 g8.-> g16 f16 f8-> ees16-> ~ ees16 c16 ees16 c16 |
    des8.-> des16 c8.-> c16 bes16 bes8-> ees16-> ~ees16 d16 ees16 e16 |
    \break
    
  } \alternative {
    { 
      %% 27
      f8.-> f16 c4-> des16-> des8-> aes16-> ~aes8 r8 |
      bes4-> ees8.-> aes,16-> r16 aes16-> r16 aes16-> aes4-> \bar "||"
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
      r2 r4 r16 f'16 aes16 c,16->~ \bar "||"
    }
  }
  \break
  
  %% 36
  c4 r16 ees16 f16 aes,16-> ~aes4 r16 f'16 aes16 c,16->~ |
  c4 r16 ees16 f16 aes,16-> ~aes4 r4 \bar "||"
  \break
  
  %% 38
  \mark \markup { \bold {[F]} }
  f'16-> aes16 c16 c,16-> ~c16 ees16 aes16 des,16-> ~des16 f16 aes16 aes,16-> 
    ~aes16 c16 ees8 |
  f16-> aes16 c16 c,16-> ~c16 ees16 aes16 des,16-> ~des16 f16 aes16 aes,16-> 
    ~aes16 c16 ees8 |
  \break
  
  %% 40
  f16-> aes16 c16 c,16-> ~c16 ees16 aes16 des,16-> ~des16 f16 aes16 aes,16-> 
    ~aes16 c16 ees8 |
  f16-> aes16 c16 c,16-> ~c16 ees16 aes16 des,16-> ~des16 f16 aes16 aes,16-> 
    ~aes16 c16 ees8 \bar "||"
  \break
  
  \repeat volta 2 {
    %% 42
    \bar "[|:"
    \mark \markup { \bold {[G]} }
    aes8.-> aes16 g8.-> g16 f16 f8-> ees16-> ~ ees16 c16 ees16 c16 |
    des8.-> des16 c8.-> c16 bes16 bes8-> ees16-> ~ees16 d16 ees16 e16 |
    \break
    
    %% 44 
    f8.-> f16 c4-> des16-> des8-> aes16-> ~aes8 r8 |
    bes4-> ees8.-> aes,16-> r16 aes16-> aes16-> aes16-> aes4-.-> |
    \break
    
    %% 46
    r2 r16 aes16-> aes16-> aes16-> aes4-.-> |
    \time 2/4 r4 ees'16-> f16 aes16 f16
    \bar ":|]"
  }
  \break
  
  %% 48
  \time 4/4
  \mark \markup { \bold {[H]} }
  aes8.-> aes16 g8.-> g16 f16 f8-> ees16-> ~ ees16 ees16 ees8 |
  des16-> aes'16 des16 c,16-> ~ c16 c16 c16 bes16-> ~bes16 bes16 bes16 bes16
    ees8-> ees16-> e16 | 
  \break
  
  %% 50
  f8.-> f16 c4-> des16-> des8-> aes16-> ~aes8 r8 |
  bes8.-> bes16-. ees4-> r16 \ff aes16-> aes16-> aes16-> aes4-.-^ |
  %% \bar "|]" 
  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  \partial 4 s4 |

  aes16*15 des16 | s1 |
  f4:m c4:m des8. aes16*3 s8 | bes4:m7  ees8.:7 aes16 s2 |
}

\header {
  piece = \markup { \fontsize #4 \bold "Unchain My heart" }
  opus = \markup { \italic "The Jackson 5" }
}

my_music = <<
  \new ChordNames \my_chords
  \new Staff \my_notes
  \new TabStaff
  \with { stringTunings = #bass-tuning } 
  { 
    %%\set TabStaff.minimumFret = #3
    %%\set TabStaff.restrainOpenStrings = ##t
    \my_notes
  }
>>
  
\score {
  \my_music
  \layout {
    \context {
      \Score
    }
  }
}

\score {
  \unfoldRepeats
  \my_music
  \midi {}
}

