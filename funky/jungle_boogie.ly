% LilyBin

\version "2.20.0"
\include "english.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Jungle Boogie" }
  opus = \markup { \italic "Kool & The Gang" }
}

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 1\in
  bottom-margin = 1\in
}

global = {
  \tempo "Funky" 4 = 106
  \time 4/4
  % \compressFullBarRests
  % \override MultiMeasureRest.expand-limit = #2
}

my_notes = \relative c {
  \clef "bass_8"
  \key bf \major
  
  %% Riff
  \repeat volta 4 {
  \mark \markup { [Riff] }
  g,8 g16 bf16 r16 bf16 f8~ f16 g8. bf8. c16~ | 
  c8 cs8 ~cs16 d8. f8 f8 fs4 |
  \break
  bf8 bf16 g16 r16 g16 a8~ a16 bf8. g8. gf16~ |
  gf8 f8~ f16 d8. df4 c8 f,8 
  \bar ":.|.:" \break
  }
  
  %% Verse
  \repeat volta 4 {
  \mark \markup { [Verse] }
  g8 [r16 g16] r8 g8 r8 f'16 (\tieDown e16~) \tieUp e8 f,8 |
  g8 [r16 g16] r8 g8 r8 g16 r16 g16 r8.
  \bar ":.|.:" \break
  }
  
  %% Vamp
  \repeat volta 4 {
  \mark \markup { [Vamp] }
  bf'16 (a16) g16 f16 a16 (bf16) g8 r8 g,16 r16 g16 r8. |
  g8 [r16 g16] r8 g8 r8 g16 r16 g16 r16 
  \bar ":.|.:" \break
  }
}

my_music = <<
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
