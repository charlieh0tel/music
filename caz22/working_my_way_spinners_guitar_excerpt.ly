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
  
  %% 5
  \sbreak
  <a' c f>1 ~ | <a c f>1 | <g c e>4 <g b d>2. ~ | <g b d>1 |
  \cbreak
  <a c f>1 ~ | <a c f>1 | <g c e>4 <g b d>2. ~ | <g b d>1 |
  \cbreak
 
  \mark \markup { \box C \italic {You were so/I used to love} }
  <g b d>2. <g b d>4 | <fs a d>1 | <e g c>2. <e g c>4 | <d fs b\3>4. <d fs a>8 ~ <d fs a>2 |
  
  %% 29
  \cbreak
  <g b d>2. <g b d>4 | <fs a d>2. <fs a d>4 | <e g c>2. <e g c>4 | <d fs b\3>4. <d fs a>8 ~ <d fs a>2 |
  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  %% 5
  f1 | s1 | c4/g g s2 | s1 |
  f1 | s1 | c4/g g s2 | s1 |
  
  %% 21
  g4 f4/g g4. f8/g | s4 g s2 | s4 f/g g4. f8 | s8 fs8 g4 s2 |
  g4 f4/g g4. f8/g | s4 g s2 | s4 f/g g4. f8 | s8 fs8 g4 s2 |
    
 
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
        %\override ChordName.font-size = -2
    }
  }
}

\score {
  \removeWithTag #'scoreOnly \unfoldRepeats \my_music
  \midi {}
}
