% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Unchain My Heart" }
  opus = \markup { \italic "Ray Charles" }
}

\paper { 
  left-margin = 1.0\in
  right-margin = 0.5\in
}

mBreak = {
  %% \break
}
cBreak = { \break }

global = {
  \time 4/4
  \tempo "Soul/Latin" 4 = 155
}

my_notes = \relative c {
  \clef "bass_8"
  \key b \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)

  \partial 8 g8 \mp |

  gs4-.-> b8 cs8-.-> r8 b8  gs8 fs8 | gs4-.-> r4 r4. \mf \cresc g8 |
  gs4-.-> b8 cs8-.-> r8 b8  gs8 fs8 \f | gs4-.-^ r4 r2 \bar "||"

  \repeat volta 2 {

    %% 5
    \mBreak
    \mark \markup { \bold { [A] } \italic { (Vocals) } }
    \bar "[|:"
    gs4-.-> \mf b8 cs8-.-> r8 b8  gs8 fs8 | gs4-.-> r4 r4. g8 |
    gs4-.-> b8 cs8-.-> r8 b8  gs8 fs8 | gs4-.-> r4 r4. gs8 |
    
    
    %% 9
    \mBreak
    e4-.-> b'8 cs8-.-> r8 b8  gs8 fs8 | e4-.-> r4 r4. g8 | 
    gs4-.-> \mf b8 cs8-.-> r8 b8  gs8 fs8 | gs4-.-> r4 r2 \bar "||" |

    %% 13
    \mBreak
    \mark \markup { \bold { [B] } }
    e4-> b'4 cs2 | gs4.-> b8 ~b8 b8 gs4-. | 
    e4-> b'4 cs2 | gs4.-> b8 ~b8 b8 gs4-. |
    e4-.-> \cresc b'8 cs8-> r8 b8  gs8 e8 |
    
    %% 18
    \mBreak
    ds4-> as'8 b8-> ~b8 as8 g8 ds8 | 
    gs4-.-> \f \< b8 cs8-.-> r8 b8  gs8 fs8 \! |
    
  } \alternative {
    { gs4-.-^ r4 r2 \bar ":|]" }
    { gs4-.-^ r4 r2 \bar "||" }
  }
  
  %% 22
  \mBreak \cBreak \pageBreak
  \mark \markup { \bold { [C] } \musicglyph #"scripts.segno" }
  cs4.-> gs8-> ~gs4 gs8 gs8 | cs,4.-> gs'8-> ~gs4 cs4 |
  gs4.-> gs8-> ~gs4 ds'8-> ds8 |
  gs,4.-> ds'8 ~ds8 ds8 gs,8-> gs8 |
  
  %% 26
  \mBreak
  cs4.-> gs8-> ~gs4 gs8 gs8 | cs,4.-> e8-> ~e4 e4 |
  ds4.-> as'8->\2 ~as4 ds8-> ds,8-.-^| r1 \bar "||" |
  
  %% 30
  \mBreak \cBreak
  \mark \markup { \bold { [D] } }
  gs4-.-> \mf b8 cs8-.-> r8 b8  gs8 fs8 | gs4-.-> r4 r4. g8 | 
  gs4-.-> b8 cs8-.-> r8 b8  gs8 fs8 |
  
  %% 33
  \mBreak
  gs4-.-> r4 r4. gs8 |
  e4-.-> b'8 cs8-.-> r8 b8 gs8 fs8 |
  e4-.-> r4 r4. g8 | 
  gs4-.-> b8 cs8-.-> r8 b8 gs8 fs8 |
  
  %% 37
  \mBreak
  gs4-.-> r4 r2 \bar "||" |
  
  \cBreak
  \mark \markup { \bold {[E]} }
  cs2.-> cs4 | gs2-> r8 b8->  gs8 b8 | cs2.-> cs4 |
  
  %% 41
  \mBreak
  gs2-> r2 | 
  e4-.-> \cresc b'8 cs8-> r8 b8  gs8 e8 |
  ds4-> as'8 b8-> ~b8 as8 g8       
      \mark \markup { 
          \italic { "To Coda" } 
          \musicglyph #"scripts.coda" }  
      ds8 \bar "||" |
   
   %% 44
   \mBreak \cBreak
   gs4-.-> \f \< b8 cs8-.-> r8 b8  gs8 fs8 \! |
   gs4-.-^ r4 r2 \bar "||" |
   \cBreak \pageBreak
   \mark \markup { \bold {[F]} \italic {(Sax Solo)} }
   gs4-.-> \mf b8 cs8-.-> r8 cs8->  b8 gs8 |
   cs,4-.-> gs'8 cs8-.-> r8 cs8->  b8 fs8 |
   
   %% 48
   \mBreak
   gs4-.-> b8 cs8-.-> r8 cs8->  b8 gs8 |
   cs,4-.-> gs'8 cs8-.-> r8 cs8->  b8 gs8 |
   cs4-.-> r8 e,8-> r4 gs8-> gs8 |
   cs,4-.-> r8 e8 r4 gs8-> g8 | 
   gs4-.-> b8 cs8-.-> r8 cs8->  b8 g8 | 
   
   %% 53
   \mBreak
   gs4-.-> r8 b8-> r8 b8->  gs8 fs8 \bar "||" |
   \cBreak
   \mark \markup { \bold {[G]} } 
     e4.-> e8 ~e4 e8 e8 |
   gs4.-> b8-> ~b4 gs8 fs8 |
   e4.-> gs8-> ~gs8 gs8 e4 |
   
   %% 57
   \mBreak
   gs4.-> b8-> ~b8 b8 gs4-. |
   e4.-> \cresc gs8-> ~gs4 e8-> e8 |
   ds4.-> ds'8 ~ds8 cs8-> as8 ds,8 |
   gs4-.-> \< b8 cs8-.-> r8 b8  gs8 fs8 \! |
   gs4-.-^ r4 r2 _\markup { \bold { \italic { "D.S. al Coda" } } }
   \bar "||"   % doesn't work
   
   \repeat volta 2 {
     %% 62
     \mBreak \cBreak
     \mark \markup { \bold { \italic { "Coda" } \musicglyph #"scripts.coda" } } 
     \bar "[|:"
     gs4-> b8 cs8-> ~cs8 b8 gs8 fs8 |
     gs2.-> r8 g8 |
   } \alternative {
     { 
       %% 64
       \mBreak \cBreak
       gs4-> \mf b8 cs8-> ~cs8  b8  gs8 fs8 | 
       gs2.-> r8 g8 \bar ":|]" | 
     }
     { 
       gs4-.-> \f \< b8 cs8-.-> r8 b8  gs8 fs8 \! |
       gs4-.-^ r4 r2  \bar "|." 
     }
   }
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  \partial 8 s8 |

  r1 | s | s | s |

  \repeat volta 2 {
    %% 5
    gs1:m6 | s | s | s
    %% 9
    e1:9 | s | gs:m6 | s
    %% 13
    cs1:m6/e | gs:m6 | cs:m6/e | gs:m6 | e:9 |
    %% 18
    ds1:9 | r |
  } \alternative {
    { s1 | }
    { s1 | }
  }
  %% 22
  cs1:m6 | s | gs:m6 | s |
  %% 26
  cs1:m6 | e:9 | ds:7 | s |
  %% 30
  gs1:m6 | s | s
  %% 33 
  s1 | e:9 | s1 | gs:m6 |
  %% 37
  s1 | cs:m6 | gs:m6 | cs:m6 |
  %% 41
  gs:m6 | e:9 | ds:9 |
  %% 44
  r1 | s | gs1:m6 | cs:7 |
  gs1:m6 | cs:7 | cs:m7 | s1 | gs:m6  |
  %% 53
  s1 | cs1:m6/e | gs:m6 | cs:m6/e |
  %% 57
  gs1:m6 | e:9 | ds:9 | r | s |
  %% 62
  \repeat volta 2 {
     gs2:m cs4.:m7 gs8:m | s1 |
  } \alternative {
    %% 64
    { s2 cs4.:m7 gs8:m | s1 | }
    { s2 cs4.:m7 gs8:m | s1 | }
  }
}

ticktock = \drummode {
  \partial 8 r8
  \repeat unfold 84 {
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
    \set TabStaff.minimumFret = #3
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

