% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Lovely Day" }
  opus = \markup { \italic "Bill Withers" }
}

\paper { 
  left-margin = 1.0 \in
  right-margin = 0.5 \in
  top-margin = 1.0 \in
  bottom-margin = 1.0 \in
}

cbreak = { 
  %%\break
}
sbreak = { \break }


global = {
  \time 4/4
  \tempo "Groovy R&B - Straight 8s" 4 = 100
}

my_notes = \relative c {
  \clef "bass_8"
  \key e \major
  
  %% 1
  e,8-.\3 \mp e8-.\3 r16 e16\3 r16 b16\4 e4-.\3 r16 b16-.\4 e16\3 ds16\3 |
  cs8-. cs8-. r16 cs16 r16 gs16 cs4-. r16 gs16-. cs16 gs16 |
  a8-. a8-. r16 a16 r16 \deadNote a16 a4 r8. gs16 |
  
  %% 4
  \cbreak
  a8-. a8-. r16 a16 r16 \deadNote a16-. c8-.\4 c8-.\4 b8-.\4 b8-.\4 \bar "||" 
  \sbreak
  \mark \markup { \italic { Horns In }}
  e8-.\3 e8-.\3 r16 e16\3 r16 b16\4 e4-.\3 r16 b16-.\4 e16\3 ds16\3 |
  
  %% 6
  \cbreak
  cs8-. cs8-. r16 cs16 r16 gs16 cs4-. r16 gs16-. cs16 gs16 |
  a8-. a8-. r16 a16 r16 \deadNote a16-. a4-. r8 a16 b16\4 |
  c8-.\4 c8-.\4 r16 c16\4 r16 \deadNote c16-.\4 c8-.\4 \< c8-.\4 b8-.\4 b8-.\4 \! \bar "||"
  
  %% 9
  \cbreak \sbreak
  \mark \markup { \bold { [A] } \italic { (Vocals) }}
  e8-.\3 e8-.\3 r16 e16\3 r16 b16\4 e4-.\3 \> r16 b16-.\4 e16\3 ds16\3 \! |
  cs8-. \mp cs8-. r16 cs16 r16 gs16 cs4-. r16 gs16-. cs16 gs16 |
  a8-. a8-. r16 a16 r16 \deadNote a16 a4 r8. gs16 |
  
  %% 12
  \cbreak
  a8-. a8-. r16 a16 r16 \deadNote a16-. c8-.\4 c8-.\4 b8-.\4 b8-.\4 \bar "||" 
  \sbreak
  e8-.\3 e8-.\3 r16 e16\3 r16 b16\4 e4-.\3 r16 b16-.\4 e16\3 ds16\3 |
  cs8-. cs8-. r16 cs16 r16 gs16 cs4-. r16 gs16-. cs16 gs16 |
  
  %% 15
  \cbreak
  a8-. a8-. r16 a16 r16 \deadNote a16-. a4-. r8 a16 b16\4 |
  c8-. \< c8-. r16 c16 r16 \deadNote c16-. c8-. c8-. c8-. c16 cs16 \! \bar "||"
  
  %% 17
  \cbreak \sbreak
  \mark \markup { \bold { [B] } }
  d4-. \mf r8. d16 d4-. r16 cs16 d16 ds16\3 |
  e4-.\3 r8. e16\3 e8-.\3 e8-.\3 e16\3 gs,8.-> |
  a4-. r8. a16 a4-. r16 gs16 a16 as16\4 |
  
  %% 20
  \cbreak
  b4-.\4 r8. b16\4 b8-.\4 fs'16\3 b,16\4 e8-.\3 b16\4 (a16) |
  d4-. r8. d16 d4-. r16 cs16 d16\3 ds16\3 |
  e4-.\3 r8. e16\3 e8\3 fs8 g8 gs8\2 |
  
  %% 23
  \cbreak
  a4-.\2 \< r8. a,16 a4-. r16 gs16 a16 as16\4 |
  b4-.\4 r8. b16\4 b8-.\4 b8-.\4 r16 b16-.\4 r16 b16\4 \! |
  
  %% 25
  \cbreak \sbreak
  \mark \markup { \bold { [C] } }
  \repeat volta 2
    {
      e8-.\3 \f e8-.\3 r16 e16\3 r16 b16\4 e4-.\3 r16 b16-.\4 e16\3 ds16\3 |
      cs8-. cs8-. r16 cs16 r16 gs16 cs4-. r16 gs16-. cs16 gs16 |
      a8-. a8-. r16 a'16\2 r16 a,16 a4-. r16 gs16-. a16 b16\4 |
      c8-. c8-. r16 c16 r16 \deadNote c16-. c8-. c8-. b8-. b8-.
    }

  %% 30
  \cbreak \sbreak
  \mark \markup { \bold { [D] } }
  
  \repeat volta 2 
    {
      e8-.\3 e8-.\3 r16 e16\3 r16 b16\4 e4-.\3 \> r16 b16-.\4 e16\3 ds16\3 \mp \! |
      cs8-. cs8-. r16 cs16 r16 gs16 cs4-. r16 gs16-. cs16 gs16 |
      a8-. a8-. r16 a'16\2 r16 a,16 a4 r8. gs16 |
      
      %% 33
      \cbreak
      a8-. a8-. r16 a16 r16 \deadNote a16-. c8-.\4 c8-.\4 b8-.\4 b8-.\4 |
      e8-.\3 e8-.\3 r16 e16\3 r16 b16\4 e4-.\3 r16 b16-.\4 e16\3 ds16\3 |

      %% 35
      \cbreak
      cs8-. cs8-. r16 cs16 r16 gs16 cs4-. r16 gs16-. cs16 gs16 |
      a8-. a8-. r16 a'16\2 r16 a,16-. a4-. r8 a16 b16\4 |
      c8-.\4 c8-.\4 r16 c16 r16 \deadNote c16 c8-. c8-. c8-. cs8-. \bar "||"
      
      %% 38
      \cbreak \sbreak
      \mark \markup { \bold { [E] } }
      d4-. r8. d16 d4-. r16 cs16 d16 ds16\3 |
      e4-. r8. e16 e8-. fs-. g8-. e8 |
      a,4-. r8. a'16 a4-. r16 gs16 a16 as16 |
      b4-. r8. fs16 b,8-. r16 fs'16 e8-. r16 b16 |
      
      %% 42
      \cbreak
      d4-. r8. d16 d4-. r16 cs16 d16 ds16 |
      e4-. r8. e16 e8 fs8 g8 gs8 |
      a4-. r8. a,16 a4-. r16 gs16 a16 as16 |
      b4-. \< r8. b16 b8-. b8-. r16 b16 r16 b16 \! \bar "||"
       
      %46
      \cbreak \sbreak
      \mark \markup { \bold { [F] } }
      e8-. \f e8-. r16 e16 r16 b16 e4-. r16 b16-. e16 ds16 |
      cs8-. cs8-. r16 cs16 r16 gs16 cs4-. r16 gs16 cs16 gs16 |
      a8-. a8-. r16 a'16 r16 a,16 a4-. r16 gs16-. a16 b16 |
      
      %% 49
      \cbreak
      c8-. c8-. r16 c16 r16 \deadNote c16-. c8-. c8-. b8-. b8-. |
      e8-. e8-. r16 e16 r16 b16 e4-. r16 b16-. e16 ds16 |
      cs8-. cs8-. r16 cs16 r16 gs16 cs4-. r16 gs16-. cs16 gs16 |
      
      %% 52
      \cbreak
      a8-. a8-. r16 a'16 r16 a,16 a4-. r16 gs16-. a16 b16 |
      c8-. c8-. r16 c16 r16 \deadNote c16 c8-. c8-. b8-. b8-. |
    }

  %% 55
  \cbreak \sbreak
  \mark \markup { \bold { [G] } \italic { Open Vamp } }
  \repeat volta 2 
    {
      e8-. e8-. r16 e16 r16 b16 e4-. r16 b16-. e16 ds16 |
      cs8-. cs8-. r16 cs16 r16 gs16 cs4-. r16 gs16 cs16 gs16 |
      a8-. a8-. r16 a'16 r16 a,16 a4-. r16 gs16-. a16 b16 |      
    }
  \alternative {
    { 
      c8-. c8-. r16 c16 r16 \deadNote c16 c8-. c8-. b8-. b8-. |
    }
    { 
      c8-. c8-. r16 c16 r16 \deadNote c16 \> c8-. c8-. b8-. b8-.  \! |
    }
  }
  
  e1->\fermata \bar "|." 

}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  %% 1
  e1 | cs:m7 | a:maj9 |
   
  %% 4
  s2 c4:maj7 b:m7 | e1 |
  
  %% 6
  cs1:m7 | a:maj9 | s2 c4:maj7 b:m7 |
  
  %% 9 [A]
  e1 | cs:m7 | a:maj9 |
  
  %% 12
  s2 c4:maj7 b:m7 | e1 | cs:m7 |
  
  %% 15
  a1:maj9 | c:maj7 |
  
  %% 17 [B]
  d1:sus9 | e:sus9 | a:m7 |
  
  %% 20
  b2:m7 e4:m7 b:m7 | d1:sus9 | e:sus9 |
  
  %% 23
  a1:m7 | b:m7 |
  
  %% 25 [C]
  \repeat volta 2
    {
      e1 | cs:m7 | a:maj9 |      
      c2.:maj7 b4:m7 | 
    }
  
  %% 30 [D]
  \repeat volta 2 
    {
      e1 | cs:m7 | a:maj9 | s2 c4:maj7 b:m7 |
      e1 | cs:m7 | a:maj9 | c1:maj7 |
      
      %% 38 [E]
      d1:sus9 | e:sus9 | a:m7 | b2:m7 ~b8.:m7 e16:m7 b4:m7 |
      
      %% 42
      d1:sus9 | e:sus9 | a:m7 | b:m7 |
      
      %% 46 [F]
      e1 | cs:m7 | a:maj9 |
      
      %% 49
      c2.:maj7 b4:m7 | e1 | cs1:m7 |
      
      %% 52
      a1:maj9 | c2.:maj7 b4:m7 |
    }

    %% 55 [G] Open Vamp
    \repeat volta 2 
      {
        e1 | cs:m7 | a:maj9 |
      }
    \alternative {
      { c2.:maj7 b4:m7 | }
      { c2.:maj7 b4:m7 | }      
    }
    e1
  
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
    \set TabStaff.minimumFret = #4
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
