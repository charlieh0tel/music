% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Wake Me Up Before You Go-Go" }
  opus = \markup { \italic "Wham" }
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
  %% \tempo "" 4 = 150
  \time 4/4
  \override Glissando.style = #'zigzag
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
}

my_notes = \relative c {
  \clef "bass_8"
  \key c \major

  \partial 4. g,8 \mf a8\4 g8 \bar "||"
  \set Score.currentBarNumber = #2
  c4-^ c4-^ r2 |
  r2 r8 g8 a8\4 g8 |
  c4-^ c4-^ r2 |
  
  %% 5
  \break
  r2 r8 g8 a8\4 g8 |
  c4-^ c4-^ r2 |
  r2 r8 g8 a8\4 g8 |
  c4-^ c4-^ r2 |
  r1 \bar "||"
  
  \repeat volta 2 {
    \bar ".|:"
    %% 10
    \break
    \mark \markup { \bold { [A] } }
    c8 \mf r8 c8 r8 c4. c8 |
    r8 c8 a8 r8 c4 c8 a8 |
    d8 r8 d8 r8 d4. c8 |
    r8 g8 a8 e'8~ e8 g4 g,8 |
  
    %% 14
    c8 r8 c8 r8 c4. c8 |
    r8 c8 a8 c8~ c4 r4 |
    d8 r8 d8 r8 d4. c8 |
    r8 g8 c8 e8~ e8 g4. \bar "||"
  
    %% 18
    \break
    \mark \markup { \bold { [B] } }
    d8 \cresc r8 r8 d8~ d8 a'8 g8 a8 |
    \tuplet 3/2 { as8 a8 g8 } \tuplet 3/2 { fs8 f8 e8~ } e8 e,4.-> |
    f'8 r8 r8 f8~ f2 | g8 r r8 \! a8~ a8 \> a,4. \! |
  
    %% 22
    \break
    d8 \cresc r8 r8 d8~ d2 | e8 r8 r8 e,8~ e2 | f'8 r8 r8 f8~ f8 a8 f'8 a,8 \! |
  
    %% 26
    \break
    \tuplet 3/2 { g8\3 \f d'8\2 g8 } 
    \tuplet 3/2 { g,8\3 d'8\2 g8 }
    \tuplet 3/2 { g,8\3 d'8\2 g8 }
    g4 \glissando |
    g,8 r8 g,8 r8 r2 \bar "||"
  
    %% 27
    \break
    \mark \markup { \bold { [C] } }
    c8 g a c~ c g a c |
    r8 g a c~ c g a c | 
    d8 g, a d~ d g, a c~ |
    c8 g a g~ g g a c |
    r8 g a c~ c g a c |
    r8 g a c~ c g a d |
    r8 g, a d~ d g, a c |
    r8 e4 e8 f8 f8 fs8 g8 |
  
    %% 35
    \break
    c,8 g a c~ c g a c |
    r8 g a c~ c g a c |
    d8 g, a d~ d g, a c |
    r8 g a g~ g g a c |
  
    %% 39
    r8 g a c~ c g a c |
    r8 g a c~ c g a c |
    e8 r r d~ d r r c~ \f \bar "||"
    \break
    c1~ | c2  <g' c>2 \glissando |
    bf'8 \deadNote c, bf' \deadNote c, a' \deadNote c, g' \deadNote c, |
    f \deadNote c e \deadNote c d8 c4 c8~ |
    c4. bf8-^ r2 |
    %% 47
    r2. c8 c8 |
  } \alternative {
    {
      %% 1st ending
      \break
      e,,4 \< f4 fs4 g4 | a4 bf4 bf4 b8 \! b8 |
    }
    {
      %% 2nd ending
      e,4 f4 fs4 g4 | a4 bf4 bf4 b8 b8 \bar "||"
    }
  }
  %% 52
  \break
  \mark \markup { \bold { [F] } Jitter Bug }
  c4 \f c4 c4. c8 |
  c8 a8 g8 c8 r8 g8 a8 c8 |
  d8 r8 r8 d'8->~ d4 g,8 g8 |
  \tuplet 3/2 { e,4-> g4-> c4-> } \tuplet 3/2 { e4-> c4-> a4-> }
  
  %% 56
  \break
  \mark \markup { Jitterbug }
  c4. c'8-> (c,4.) c8 |
  c8 a8 g8 c8~ c8 c8 c8 e8 |
  d4. d'8-> (d,4.) d8 |
  e,8 e8 \tuplet 3/2 { g8 a8 c8 } 
  c'8-> \glissando \deadNote c,8 r4 \bar "||"
  
  \break
  \mark \markup { \bold { [F] } }
  d4 \mp d d d | e4 e4 \tuplet 3/2 { e8-. b8-. g8-. } e4 |
  f'4 f4 f4 f8 f8 | 
  e4 \glissando b'4 a2 |
  
  %% 64
  \break
  \tuplet 3/2 { d,4-. f4-. a4-. }  d2 \startTrillSpan  |
  r8 \stopTrillSpan e,4 e,8~ e2 |
  f'4 f4 f2 |
  g,1-> \ff \bar "||"
  
  %% 68
  \break
  \mark \markup { \bold { [G] } }   
  c8 \f r8 c8 r8 c8 g8 a8 c8~ |
  c8 g8 a8 c8~ c8 g8 a8 d8 |
  r8 g,8 a8 d8 r8 g,8 a8 c8 |
  r8 g8 a8 g8~ g8 g8 a8 c8 |
  
  %% 72
  \mark \markup { Jitterbug }
  r8 g8 a8 c8~ c8 g8 a8 c8 |
  r8 g8 a8 c8~ c8 g8 a8 d8 |
  r8 g,8 a8 d8~ d8 g,8 a8 c8 |
  r8 e4-> f8->~ f8 fs4-> g8 \bar "||"
  
  %% 76
  \break
  \mark \markup { \bold { [H] } }
  c,8 g8 a8 c8~ c8 g8 a8 c8 |
  r8 g8 a8 c8~ c8 g8 a8 c8 |
  d8 g,8 a8 d8~ d8 g,8 a8 c8 |
  r8 g8 a8 g8~ g8 g8 a8 c8 |
  r8 g8 a8 c8~ c8 g8 a8 c8 |
  r8 g8 a8 c8~ c8 g8 a8 c8 |
  d8 g,8 a8 d8~ d8 d8 d8 d8 |
  e8 e8 f8 f8 fs8 fs8 fs8 g8 \bar "||"
  
  %% 84
  \break
  \mark \markup { \bold { [I] } }
  c,8 g8 a8 c8~ c8 g8 c8 e,8->~ |
  e4 f4 fs4 g8 g8 |
  d'8 g,8 a8 d8~ d8 g,8 a8 c8~ |
  c8 g8 a8 g8~ g8 g8 a8 c8 |
  
  %% 88
  \break
  r8 g8 a8 c8~ c8 g8 a8 c8 |
  r8 g8 a8 c8~ c8 g8 a8 c8 |
  d8 g,8 a8 d8~ d8 g,8 a8 c8 |
  r8 e4.-> f4 fs8 g8 \bar "||"
  
  %% 92
  \break
  \mark \markup { \bold { [J] } }
  c,8 g8 a8 c8~ c8 g8 c8 e,8->~ |
  e4 f4 fs4 g8 g8 |
  d'8 g,8 a8 d8~ d8 g,8 a8 c8~ |
  c8 g8 a8 g8~ g8 g8 a8 c8 |
  r8 g8 a8 c8~ c8 g8 a8 c8 |
  r8 g8 a8 c8~ c8 g8 a8 c8 |
  d8 g,8 a8 d8~ d4 <g d'>4 \glissando | c'4 b4 bf4 a4 \bar "||"
  
  \break
  \mark \markup { \bold { [K] } }
  c,,8 g8 a8 c8~ c8 g8 a8 e8~ |
  e4 f4 fs4 g4 |
  d'8 g,8 a8 d8~ d8 g,8 a8 c8~ |
  c8 g8 a8 g8~ g8 g8 a8 g8 |
  
  %% 104
  c8 g8 a8 c8~ c8 g8 a8 g8 |
  c8 a8 g8 c8~ c8 g8 a8 c8 |
  d8 g,8 a8 d8~ d8 g8 a8 c8 |
  r8 e,4.-> f8 f8 fs8 g8 \bar "||"
  c,4-^ r4 r2 |
  
  %% 109
  \break
  \mark \markup { \bold { [L] } }
  R1*5 |
  r2 r4. ef,8 \f \glissando | \tuplet 3/2 { e4-> g4-> c4->} \tuplet 3/2 { e4-> c4-> a4-> } |
  c4-^  r4 r2 \bar "|."
  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  
  \partial 4. s4. |
  s1*8 |
  
  \repeat volta 2 {
    %% A 5
    c1 | s | d:min | c |
    s1 | s | d:min | c |
    d1:min7 | e:min7 | f | e2:min7 a2:min9 |
    d1:min7 | e:min7 | f | g:sus4 | s|
    
    %% C 27
    c1 | s1 | d:min7 | c | s | s | d:min7 | c | s | s | d:min7 | c | s |s | e2:min7 d2:min7 |
    
    %% D 42
    g1:min/c | f/c | c:7 | s | g:min/c | f/c |
  } \alternative {
    { c1:7 | s1 | }
    { c1:7 | s1 | }  %% chord is not showing up for some reason
  }
  c1 | s | d:min7 | \tuplet 3/2 { c4:7 d:min c } \tuplet 3/2 { c4:7 d:min c } |
  
  %% 56
  c1 | s | d:min7 | c |
  
  %% F 60
  d1:min7 | e:min7 | f | e2:min7 a2:min9 |
  d1:min7 | e:min7 | f | g:sus4 |
  
  %% G 68
  c1 | s1 | d:min7 | c |
  c1 | s | d:min7 | c |
  c1 | s | d:min7 | c |
  c1 | s | d:min7 | c |
  c1 | s | d:min7 | c |
  c1 | s | d:min7 | c |
  c1 | s | d:min7 | c |
  c1 | s | d:min7 | c |
  c1 | s | d:min7 | c |
  c1 | s | d:min7 | c |
  s1 | s1*5 | s1 | s1 | s1 |
}

ticktock = \drummode {
  \partial 4. { r4. }
  \repeat unfold 100 {
    hiwoodblock 4 lowoodblock lowoodblock hiwoodblock lowoodblock lowoodblock
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
      \Score \override StringNumber #'stencil = ##f 
    }
  }
}
\score {
  \removeWithTag #'scoreOnly \unfoldRepeats \my_music
  \midi {}
}
