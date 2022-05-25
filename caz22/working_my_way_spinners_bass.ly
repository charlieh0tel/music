% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Working My Way Back To You Girl" }
  opus = \markup { \italic "The	 Spinners" }
}

\paper { 
  left-margin = 1.0 \in
  right-margin = 1.0 \in
  top-margin = 1.0 \in
  bottom-margin = 1.0 \in
}

#(set-global-staff-size 17)

cbreak = { 
  \break
} 
sbreak = { \break }


global = {
  \time 4/4
  \tempo 4 = 121
}

my_notes = \relative c {
  \clef "bass_8"
  \key c \major
  
  %% 1
  r1-"Drum figure" \bar "||"
  
  %% 5
  \sbreak
  f,8 c d f r c d f | f c d f r c d f | g8 d e g r d e g | g d e g r d e g |
  \cbreak
  f8 c d f r c d f | f c d f r c d f | g8 d e g r d e g | g d e g r d e g |
  
  %% 13 
  \sbreak
  \repeat volta 2 {
    
    f8 \mark \markup { \box A \italic {I'll be working} }
    c d f r c d f | g8 d e g r d e g | c,4 f e c | a8 a a a g g g e' |
    
    %% 17
    \cbreak
    f8 c d f r c d f | g8 d e g r d e g | c,4 f e c | a8 a a a d d d d \bar "||"
    
    %% 21
    \sbreak
    \mark \markup { \box B \italic {Get Away} }
    g,8 g g g g g g g | g g g g g g g g | g g g g g g g f | r8 fs g g g g g g \bar "||"
    
    %% 25
    \sbreak
    \mark \markup { \box C \italic {You were so/I used to love} }
    g8 g g g g g g d' | fs, fs fs fs fs fs fs d' | c g a c c g a c | d a b d d a b d |
    
    %% 29
    \cbreak
    g,8 g g g g g g d' | fs, fs fs fs fs fs fs d' | c g a c c g a c | d a b d d a b d |
    
    % 33
    \sbreak
     \mark \markup { \box D \italic {Down and out / Nights are long} }
    c8 g a c r g a c | c g a c r g a c | b g a b r g a b | bf g bf g bf g bf g |
    
    %% 37
    \cbreak
    g g b c r g b c | g g b c r g b c | g g b c r2 | bf'8 a4 g8 r2 |
  }
  
  %% 41
  \sbreak
  \mark \markup { \box E \italic {I'll be working} }
  f8 c d f r c d f | g b, e g r d e g | c,4 f e c | a8 a a a g g g e' |

  %% 45
  \cbreak
  f8 c d f r c d f | g b, e g r d e g | c,4 f e c | a8 a a a d d d d \bar "||"
  
  %% 49
  \cbreak
  g,8 g g g g g g g | g g g g g g g g | g g g g g g g f | r fs g g g g g g \bar "||"
  
  %% 53
  \sbreak
  \mark \markup { \box G }
  f'8 c d f r c d f | f c d f r c d f | g d e g r d e g | g d e g r d e g |  

  %% 57 
  \cbreak
  f8 c d f r c d f | f c d f r c d f | g d e g r d e g | g d e g r d e g \bar "||"  

  %% 61
  \sbreak
  \mark \markup { \box H \italic { Really sorry } }
  g8 d e g r d e g | g8 d e g r d e g | f c d f r c d f | f c d f r c d f |  

  %% 65
  \cbreak
  g8 d e g r d e g | g8 d e g r d e g | f c d f f f f f | af af af af e e e e \bar "||"

  %% 69
  \sbreak
  \mark \markup { \box I \italic { Forgive me } }
  \repeat percent 3 { gs4 a8 a8~ a4 g | f8 f r e8 e4 e8 e8 | }
  gs4 a8 a8~ a4 g  |
  
  %% 76
  \cbreak
  fs,4. a8~ a4. c8~ | c4. ef8~ ef4. g8 | g8 d e g r d e g | g d e g r d e g \bar "||"
  
  %% 80
  \sbreak
  \mark \markup { \box J \italic { I'll be working } }
  f8 c d f r c d f | g8 d e g r d e g | c,4 f e c | a8 a a a g g g e' |

  %% 84
  \cbreak
  f8 c d f r c d f | g8 d e g r d e g | c,4 f e c | a8 a a a d d d d \bar "||"
  
  %% 88 
  \sbreak
  \mark \markup { \box K \italic { Get away } }
  g,8 g g g g g g g | g g g g g g g g | g g g g g g g f | r8 fs g g g g g g \bar "||"
  

  \key e \major

  \sbreak
  \repeat volta 2 {
    %% 92
    a'8 \mark \markup { \box L \italic { Repeat & Fade } }
    e fs a r e fs a | b8 fs gs b r fs gs b | e,4 a gs e | cs8 cs cs cs b b b e |
    
    %% 96
    \cbreak
    a8 e fs a r e fs a | b8 fs gs b r fs gs b | e,4 a gs e | cs8 cs cs cs fs fs fs fs |
  }
  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  %% 1
  s1 |
  
  %% 5
  f1 | s1 | c4/g g s2 | s1 |
  f1 | s1 | c4/g g s2 | s1 |

  \repeat volta 2 {
  
    %% 13
    f1 | c4/g g s2 | c4 f c s | a2:min a2:min/g |
    
    %% 17
    f1 | c4/g g s2 | c4 f c s | a2:min d |
    
    %% 21
    g4 f4/g g4. f8/g | s4 g s2 | s4 f/g g4. f8 | s8 fs8 g4 s2 |
    
    %% 25
    g1 | d/fs | c | d8:6 s8 s8 d8 s2 |
    %% 29
    g1 | d/fs | c | d8:6 s8 s8 d8 s2 |
  
    %% 33
    c1 | c:min6 | g | bf:dim |
    %% 37
    g4.  c8 s2 | g4.  c8 s2 | g4.  c8 s2 | bf8 f4 g8 s2 |
  }
  
  %% 41
  f1 | c4/g g2. | c4 f c2 | a2:min a2:min/g | 

  %% 45
  f1 | c4/g g2. | c4 f c2 | a2:min d2 | 
  
  %% 49
  g4 f/g g4. f8/g | s4 g2. | s4 f/g g4. f8 | s8 fs g2. | 
  
  %% 53
  f1 | s1 | c4/g g2. | s1 |
  
  %% 57
  f1 | s1 | c4/g g2. | s1 |
  
  %% 61
  g4.:6 g8 s2 | g4.:6 g8 s2 | f4.:6 f8 s2 | f4.:6 f8 s2 |
  
  %% 66
  g4.:6 g8 s2 | g4.:6 g8 s2 | f4.:6 f8 s2 | af2:dim e2:7 |
  
  %% 69
  \repeat percent 3 { e4:7 a:min s2 | f4. c8/e s2 } 
  e4:7 a:min s2 |
  
  %% 76
  fs1:dim | s1 | g1 | s1 |
  
  %% 80
  f1 | c4/g g s2 | c4 f c s | a2:min a2:min/g |
  
  %% 84
  f1 | c4/g g s2 | c4 f c s | a2:min d |

  %% 88
  g4 f4/g g4. f8/g | s4 g s2 | s4 f/g g4. f8 | s8 fs8 g4 s2 |
  
  \key e \major

  \sbreak
  \repeat volta 2 {
    %% 92
    a1 | e4/b b s2 | e4 a e s | cs2:min cs2:min/b |
    
    %% 96
    a1 | e4/b b s2 | e4 a e s | cs2:min fs2:min |
  }  

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
