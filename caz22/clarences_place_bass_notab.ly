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

my_notes = \relative c {
  \clef "bass_8"
  \key f \minor
  
  \partial 2. { r2. }
  
  \repeat volta 2 {
    df,2 c4. f8 |
    r1 |
    r4 df8 r8 c4. f8 |
  
    r1 |
    ef2\3 d4.\3 af8 | 
    r1 | 
    r4 df8 r8 c4. f8 |
    \cbreak
    r1 |
   
    r4 c2 c4 ~ | c4 df2 df4 | af'2 f2 |  
    r1 |
  
    ef4 g bf c | 
    r1 |
  }

  \sbreak
  \repeat volta 2 {
    df,4 f c' ef | 
    d c bf af |
    g bf af c, |
    df af' f c' |
    %\cbreak
    bf af ef df |
    af' f bf g |
    c af f df  |
    c df bf' af |
    g ef c ef |
    %\cbreak
    f bf f ef |
    f c df f |
    c df ef e
  }
  
  \sbreak
  \repeat volta 2 {
    df2 c4. f8 |
    r1 |
    r4 df8 r8 c4. f8 |
  
    r1 |
    ef2\3 d4.\3 af8 | 
    r1 | 
    r4 df8 r8 c4. f8 |
    \cbreak
    r1 |
   
    r4 c2 c4 ~ | c4 df2 df4 | af'2 f2 |  
    r1 |
  
    ef4 g bf c | 
  } \alternative {
    { 
      r1 | 
      %ef4 g bf c | 
    }
    { 
      <f, c>1 \fermata \bar "|." 
    }
  }
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  %%\set minorChordModifier = \markup { \bold { - } }

  \partial 2. { f2.:min7 }
  
  \repeat volta 2 {
    df2:7 c4.:7 f8:min7 ~ | f1:min7 ~ |
    f4:min7  df4:7 c4.:7 f8:min7 ~ | f1:min7 | 
    df2:7.9+ df4.:9 bf8:min9 ~ | 
    bf1:min9 ~ | bf4:min9 df4:7 c4.:7 f8:min7 ~ |
    f1:min7 ~ | f4:min7 c2.:7sus4 ~ | 
    c4:7sus4 df2.:maj7 | df2:7 c2:7 | 
    f1:min7 | gf:7.5- | f1:min7
  }
  \repeat volta 2 {
    f1:min9 | f1:min9 | f1:min9 | f1:min9 |
    bf1:min7 | bf1:min7 | f:min9 | f:min9 | c:min7 | bf:min7 | f:min9 | f:min9 |
  }
  \repeat volta 2 {
    df2:7 c4.:7 f8:min7 ~ | f1:min7 ~ |
    f4:min7  df4:7 c4.:7 f8:min7 ~ | f1:min7 | 
    df2:7.9+ df4.:9 bf8:min9 ~ | 
    bf1:min9 ~ | bf4:min9 df4:7 c4.:7 f8:min7 ~ |
    f1:min7 ~ | f4:min7 c2.:7sus4 ~ | 
    c4:7sus4 df2.:maj7 | df2:7 c2:7 | 
    f1:min7 | gf:7.5- |
  } \alternative {
    {
      f1:min7 |
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
    \set Staff.midiInstrument = #"electric bass (finger)"
    \set Staff.midiMinimumVolume = #0.7
    \set Staff.midiMaximumVolume = #0.95
    \global
    \my_notes
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
