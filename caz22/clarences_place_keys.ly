% LilyBin

\version "2.18.0"
\include "english.ly"
\include "swing.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Clarence's Place" }
  opus = \markup { \italic "Hubbard" }
}

\paper { 
  left-margin = 0.75\in
  right-margin = 0.5\in
  top-margin = 1\in
  bottom-margin = 1\in
}

%#(set-global-staff-size 18.3)

cbreak = { 
  \break
} 

sbreak = { \break }

global = {
  \tempo "Med Swing" 4=150
  \time 4/4
  % \compressFullBarRests
  % \override MultiMeasureRest.expand-limit = #2
}

my_chords = \chordmode {
  \clef "treble"
  \key f \minor

  \set majorSevenSymbol = \markup { maj7 }
  %%\set minorChordModifier = \markup { \bold { - } }
  \set noChordSymbol = ""

  \partial 2. { r2. }
  
  \repeat volta 2 {
    df2:7 c4.:7 f8:min7 | r1 |
    r4  df4:7 c4.:7 f8:min7 | r1 |
    \cbreak
    df2:7.9+ df4.:9 bf8:min9 | 
    r1 | r4 df4:7 c4.:7 f8:min7 |
    r1 | 
    \cbreak
    r4 c2.:7sus4 ~ | 
    c4:7sus4 df2.:maj7 | df2:7 c2:7 | 
    f1:min7 | gf:7.5- | r1
  }
  \sbreak
  \repeat volta 2 {
    f1:min7 | f1:min7 | f1:min7 | f1:min7 |
    \cbreak
    bf1:min7 | bf1:min7 | f:min7 | f:min7 | 
    \cbreak df:7 | c:7 | f:min7 | f:min7 |
  }
  \sbreak
  \repeat volta 2 {
    df2:7 c4.:7 f8:min7 | r1 |
    r4  df4:7 c4.:7 f8:min7 | r1 |
    \cbreak
    df2:7.9+ df4.:9 bf8:min9 | 
    r1 | r4 df4:7 c4.:7 f8:min7 |
    r1 | 
    \cbreak
    r4 c2.:7sus4 ~ | 
    c4:7sus4 df2.:maj7 | df2:7 c2:7 | 
    f1:min7 | gf:7.5-
  } \alternative {
    {
      r1 |
    }
    {
      f1:min7 |
    }
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
    %\set Staff.midiInstrument = #"electric bass (finger)"
    %\set Staff.midiMinimumVolume = #0.7
    %\set Staff.midiMaximumVolume = #0.95
    \global
    \my_chords
  }

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
