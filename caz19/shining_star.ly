% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Shining Star" }
  opus = \markup { \italic "EW&F" }
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
  \tempo "Funky - Swung 16th's" 4 = 105
}

my_notes = \relative c {
  \clef "bass_8"
  \key e \major

  R1 | R1 |
  e,,8 gs8-. b8-. cs16 b16 e8-. cs8-. b8-. cs16 b16 |
  d8-. cs8-. b8-. cs16 b16- \f e8-. g-. e16-> e16-. r8 \bar "||"

  %% 5
  \break
  \mark \markup { \bold { [A] } }
  e,4 \ff ~e8. e16 e2 | 
  e4-- \f r8 e16 [e16] e4-- r4 |
  e4-- r8. e16 e4-- r16 d''8.-> |
  e,,4-- r8. e16 e4-- r16 e''8.-> \bar "||"
  
  %% 9
  \break
  \mark \markup { \bold { [B] } }
  e,,4-- r8. e16 e4-- r16 d''8.-> | 
  e,,4-- r8. e16 e4-- r16 d''8.-> |
  e,,4-- r8. e16 e4-- r16 e''8.-> | 
  e,,4. r16 e''16 g16 g16 fs16 \deadNote d,16 e'16 d,16 d'16 e16 |
  e,,4-- r8. e16 e4-- r16 d''8.-> |
  e,,4-- r8. e16 e4-- r8. e16 |
  e4-- r8. e16 e4-- r16 d''8.-> |
  e,,4. r16 e''16 g16 g16 fs16 \deadNote d,16 e'16 d,16 d'16 e16 \bar "||"

  %% 17
  \break
  \mark \markup { \bold { [C] } }
  e,,4-- r8. e16 e4-- r16 d''8.-> |
  e,,4-- r8. e16 e4-- r16 e''8.-> | 
  e,,4-- r8. e16 e4-- r16 d''8.-> |
  e,,4-- r8. e16 e8-. e4. \bar "||"
  
  %% 21
  \break
  \mark \markup { \bold { [D] } } 
  a'8 \mf e'8-. a,8 a16 e'16 <d, fs'>8 d8-. r8 d16 d16 |
  <g, b'>8 g8 r4 <c e'>8 c-. <b ds'>8 bf8-. |
  
  %% 23
  \break
  a8 a8-. r8 a16 a16 <d fs'>8 d8-. r8 d16 d16 |
  <g, b'>8 g8 r4 <c e'>8 c-. r4 \bar "||"
  
  %% 25
  \break
  \mark \markup { \bold { [E] } } 
  e,8-> g8-. r8. a16-. a8-> g8-. r8. b16 |
  b8-> \cresc g8-. r4 a8-> g8-. r4 |
  g16-> e16 e16 af16 r16 e16 a16 a16 a8-> a8 a8. a16 |
  a16 a16 a16 bf16 r16 bf16 b16 b16 b8-> b8 b4 | 
  b8-. a16 c16 r16 a16 cs16 cs16 cs8-> cs8 cs8 r8 |
  cs16 cs16 cs16 d16 r16 b16 ef8->~ \mf ef2~ |
  
  %% 31
  ef2. <e g'>16 \f <e g'>8.-> \bar "||"
  
  %% 32
  \break
  \mark \markup { \bold { [F] } } 
  e,4-- r8. e16 e4-- r4 |
  e4-- r8. e16 e8 e8-- r16 d''8.-> |
  e,,4-- r8. e16 e16 g''16 fs16 e16 fs16 e8-> e16 |
  e,,4. r16 e''16 g16 g16 g16 \deadNote d,16 e'16 d,16 d'16 e16 |
  e,,4-- r8. e16 e8 e8-- r16 d''8.-> |
  e,,4-- r8. e16 e8 e8-- r16 g''8.-> |
  e,,4-- r8. e16 e8 e8-- r16 d''8.-> |
  e,,4. r16 e''16 g16 g16 g16 \deadNote d,16 e'16 d,16 d'16 e16 | %% \bar "||"
  
  %% 40
  \break
  \mark \markup { \bold { [G] } } 
  \repeat volta 2 { 
    e,,4-- r8. e16 e8 e8-- r16 d''8.-> |
    e,,4-- r8. e16 e8 b''16-> (c16 cs16) cs16-> (d16 ds16) |
    e,,4-- r8. e16 e4-- r16 d''8.-> |
    
    %% 43
    e,,4-- r8. e16 e8 e'8-- r16 e'8.-> |
    e,,4-- r8. e16 e4-- r16 d''8.-> |
    e,,4. r16 e''16 g16 e,16 fs'16 \deadNote d,16 e'16 d,16 d'16 e16 |
    
    %% 46
    e,,4-- r8. e16 e4-- r16 d''8.-> |
  } \alternative {
    { e,,4-- r8. e16 e4-- r16 d''8.-> | }
    { g16 e,16 fs'16 \deadNote d,16 e'16 d,16 d'16 e16 e,,4.-> e16-> e16-> | } %% \bar "||"
  }
  
  %% 49
  \break
  \mark \markup { \bold { [H] } } 
  a'8 \mf e'8-. a,8 a16 e'16 <d, fs'>8 d8-. r8 d16 d16 |
  <g, b'>8 g8 r4 <c e'>8 c8-. <b ds'>8  bf8-. |
  a8 a8-. r8 a16 a16 <d fs'>8 d8-. r8 d16 d16 |
  
  %% 52
  <g, b'>8 g8-. r4 <c e'>8 c8~ <c fs'>8 c8 |
  \break
  a'8 \f e'8-. a,8 a16 e'16 <d, fs'>8 d8-. r8 d16 d16 |
  <g, b'>8 g8 r4 <c e'>8 c8-. <b d'>8 bf8-. |
  a8 a8-. r8 a16 a16 <d fs'>8 d8-. r8 d16 d16 |
  
  %% 56
  <g, b'>8 g8 r4 <c e'>8 c8~ <c fs'>8 c8 |
  \break
  a8 a8-. r8 a16 a16 <d fs'>8 d8-. r8 d16 d16 |
  <g, b'>8 g8 r4 <c e'>8 c8-. <b d'>8 bf8-. |
  a8 a8-. r8 a16 a16 <d fs'>8 d8-. r8 d16 d16 |
  
  %% 60
  <g, b'>8 g8 r4 <c e'>8 c8~ <c fs'>8 c8 \bar "||"
  
  %% 61
  \break
  \mark \markup { \bold { [I] } } 
  a4-. \mf r8. d16 <d fs'>8 d8-. r8. b'16 |
  <g b>8 g,8-. r4 e''8~ <c, e'>8 b'8~ <b b,>8 |   
  
  %% 63
  a,4-. r8. d16 <d fs'>8 d8-. r8. b'16 |
  <g b>8 g,8-. r4 e''8~ <c, e'>8 b'8~ <b b,>8 |
  R1*2 \bar "|."
  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  s1 | s1 | s1 | s1 |

  %% 5
  e1:7.9+ | e1:sus4 | e1:7.9+ | s1 |
  
  %% 9
  e1:7.9+ | s1 | s1 | s1 | s1 | s1 | s1 | s1 
  
  %% 17
  e1:7.9+ | s1 | s1 | s1 |
  
  %% 21
  a2:7 d2:9 | g2:13.11 c2:13.11 |
  
  %% 23 
  a2:7 d2:9 | g2:13.11 c2:13.11 |

  %% 25
  e1:7.9+ | s1 | g4:6.9 af4:13.11 a2:13.11 |
  
  %% 28
  s4 bf4:13.11 b2:13.11 | s4 c4:13.11 cs2:13.11 | s4 d4:13.11 ef2:13.11 |
  
  %% 31
  s2. e4:7.9+ |

  %% 32
  e1:7.9+ | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
  
  %% 40
  \repeat volta 2 { 
    e1:7.9+ | s1 | s1 | s1 | s1 | s1 | s1 | 
  } \alternative {
    { s1 | }
    { s1 | }
  }

  %% 49 [H]
  a2:7 d2:9 | g2:13.11 c4:13.11 b4:13.11 |
  a2:7 d2:9 | g2:13.11 c4:13.11 b4:13.11 |
  a2:7 d2:9 | g2:13.11 c4:13.11 b4:13.11 |
  a2:7 d2:9 | g2:13.11 c4:13.11 b4:13.11 |
  a2:7 d2:9 | g2:13.11 c4:13.11 b4:13.11 |
  a2:7 d2:9 | g2:13.11 c4:13.11 b4:13.11 |
  
  %% 61 [I]
  a2:7 d2:9 | g2:13.11 c4:13.11 b4:13.11 |
  a2:7 d2:9 | g2:13.11 c4:13.11 b4:13.11 |
  s1 | s1 |  
  
}

ticktock = \drummode {
  \repeat unfold 40 {
    hiwoodblock 4 lowoodblock lowoodblock lowoodblock
  }
  \repeat volta 2 {
    \repeat unfold 7 {
      hiwoodblock 4 lowoodblock lowoodblock lowoodblock
    }
  } \alternative {
    { hiwoodblock 4 lowoodblock lowoodblock lowoodblock }
    { hiwoodblock 4 lowoodblock lowoodblock lowoodblock }
  }
  \repeat unfold 16 {
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
    \set Staff.midiMinimumVolume = #0.7
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
