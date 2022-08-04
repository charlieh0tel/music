% LilyBin

\version "2.18.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Working My Way Back To You Girl" }
  opus = \markup { \italic "The	Spinners" }
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
  \clef "G_8"
  \key c \major
  
  %% 1
  r1-"Drum figure" | r1 | r1 | r1  \bar "||"
  
  %% 5
  \sbreak
  <a' c f>1 ~ | <a c f>1
  <g c e>4 <g b d>2. | r1 |
  \cbreak
  R1*4 |
  
  %% 13 
  \sbreak
  \repeat volta 2 {
    
    R1*4 \mark \markup { \box A \italic {I'll be working} }
    |
    
    %% 17
    \cbreak
    R1*4 \bar "||"
    
    %% 21
    \sbreak
    \mark \markup { \box B \italic {Get Away} }
    R1*4 \bar "||"
    
    %% 25
    \sbreak
    \mark \markup { \box C \italic {You were so/I used to love} }
    <g b d>2. <g b d>4 | <fs a d>1 | <e g c>2. <e g c>4 | <d fs b\3>4. <d fs a>8 ~ <d fs a>2 |
    
    %% 29
    \cbreak
    <g b d>2. <g b d>4 | <fs a d>2. <fs a d>4 | <e g c>2. <e g c>4 | <d fs b\3>4. <d fs a>8 ~ <d fs a>2 |
    
    % 33
    \sbreak
     \mark \markup { \box D \italic {Down and out / Nights are long} }
     R1*4 |
    
    %% 37
    \cbreak
    R1*4 |
  }
  
  %% 41
  \sbreak
  \mark \markup { \box E \italic {I'll be working} }
  R1*4 |

  %% 45
  \cbreak
  R1*4 \bar "||"
  
  %% 49
  \cbreak
  R1*4 \bar "||"
  
  %% 53
  \sbreak
  \mark \markup { \box G }
  R1*4 |  

  %% 57 
  \cbreak
  R1*4 \bar "||"  

  %% 61
  \sbreak
  \mark \markup { \box H \italic { Really sorry } }
  R1*4 |  

  %% 65
  \cbreak
  R1*4 \bar "||"

  %% 69
  \sbreak
  \mark \markup { \box I \italic { Forgive me } }
  \repeat percent 3 { R1*2 | }
  r1  |
  
  %% 76
  \cbreak
  R1*4 \bar "||"
  
  %% 80
  \sbreak
  \mark \markup { \box J \italic { I'll be working } }
  R1*4 |

  %% 84
  \cbreak
  R1*4 \bar "||"
  
  %% 88 
  \sbreak
  \mark \markup { \box K \italic { Get away } }
  R1*4 \bar "||"
  

  \key e \major

  \sbreak
  \repeat volta 2 {
    %% 92
    R1*4 \mark \markup { \box L \italic { Repeat & Fade } }
    |
    
    %% 96
    \cbreak
    R1*4 |
  }
  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  %% 1
  s1 | s1 | s1 | s1 |
  
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
    \set Staff.midiInstrument = #"electric guitar (clean)"
    \set Staff.midiMinimumVolume = #0.7
    \set Staff.midiMaximumVolume = #0.95
    \global
    \my_notes
  }
  \tag #'scoreOnly
  \new TabStaff
    \with { stringTunings = #guitar-tuning } 
  { 
    %%\set TabStaff.minimumFret = #1
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
