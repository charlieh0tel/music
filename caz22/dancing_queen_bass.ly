% LilyBin

\version "2.18.0"
\include "english.ly"
\include "../lib/dsmarks.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Dancing Queen" }
  opus = \markup { \italic "ABBA" }
}

\paper { 
  left-margin = 1 \in	
  right-margin = 1 \in
  top-margin = 1.0 \in
  bottom-margin = 1.0 \in
}

#(set-global-staff-size 15.5)
		
cbreak = { 
  \break
} 
sbreak = { \break }


global = {
  \time 4/4
  \tempo "Disco" 4 = 100
  \override Glissando.style = #'zigzag
}

my_notes = \relative c, {
  \clef "bass_8"
  \key a \major
	
  \partial 4 r4 \bar "||"
  \set Score.currentBarNumber = #2
  
  %% 2
  a8-- r16 a16-. a'8-. a,8 r16 e'16-. e fs a8 r8 | 
  a,8-- r16 a16-. a'8-. a,8 r16 e16-. e e fs8 gs |
  a8-- r16 a16-. a'8-. a,8 r16 e'16-. e fs a8 r8 | 
  
  %% 5 
  \cbreak
  a,8-- r16 a16-. a'8-. a,8 r8 e8-. fs e16 fs16 |
  a8-- r16 a16-. a'8-. a,8 r16 e'16-. e fs a8 r8 |
  
  %% 7
  \cbreak
  a,8-- r16 a16-. a'8-. a, r16 e16-. e8 fs8 r16 gs16 |
  a8-- r16 a16-. a8-. a r16 a16-. a8 gs4-> |
  fs8-- r16 fs16-. fs8-. e r16 e16-. e8 \grace gs (a8) e'8 \bar "||"
  
  %% 10
  \sbreak
  \mark \markup { \box A }
  e,8 r16 e16 r8 e8 r8 e'8-. e16 b8 c16 | 
  cs8. cs16-. cs8 cs8~ cs16 ds16-.\3 ds8\3 f8\3 ds16\3 f16\3 |
  fs8.\3 fs16-.\3 fs8-.\3 fs8\3 r16 fs16\3 fs8\3 r16 e8.\3 | 
  
  %% 13
  \cbreak
  ds8.\3 ds16-.\3 ds8-.\3 ds8~\3 ds16 ds8.\3 b'16->\2 ds,8.\3 |
  d8.\3 d16-.\3 d8-.\3 d8\3 r8 d8\3 r16 cs8.->\3 |
  b8. b16-. b8-. b8~ b16 fs-. b8 e,8 gs |
  a8. a16-. a8-. a8 r16 a16 e'16 fs16 a8 r8 |
  
  %% 17
  \cbreak
  a,8. a16-. a8-. a8 r16 a16 e8 fs gs-. |
  a8. \> a16-. e'16 fs16 a8-. r16 a,16 a8-. a r8 |
  a8. a16-. e'16 fs16 a8-. r16 a,16 a8-. a \! a-. \bar "||"
  
  %% 20
  \sbreak
  \mark \markup { \box B }
  a8. \mf a16-. a8-. a8 r16 a16 a8-. e'16 fs a8 |
  a,8. a16-. a8-. a8 r16 e16 e8 fs8-. a16 fs |
  a8. a16-. a8-. a8 r16 a16 a8-. e'16 fs a8 |
  
  %% 23
  \cbreak
  fs8\3 r16 fs\3 fs8-.\3 fs\3 r16 fs-.\3 cs8\4 \afterGrace fs4\3 \glissando { \hideNotes e, \unHideNotes } |
  e8 r16 e16 r8 gs8 r8 e'8\3 g16\2 (gs\2) b8-.\1 |
  e,,8 r16 e16 r8 gs8 r8 e'8\3 g16\2 (gs\2) b8-.\1 |
  
  %% 26
  e,8\3 r16 fs16\3 fs8-.\3 fs8\3 ~ fs16\3 fs\3 e8-.\3 fs8\3 fs,8-. |
  e-. e16 fs r8 fs8 ~ fs16 fs-. fs fs fs8 fs16 gs \bar "||"
  
  %%\sbreak
  \mark \markup { \box C }
  a8. a16-. a8-. a8 r16 a16 a8-. e'16 fs a8 |
  
  %% 29
  \sbreak
  a,8. a16-. a8-. a8 r16 e16-. e e fs8-. a16 fs | 
  a8. a16-. a8-. a8 r16 a16 a8-. e'16 fs a8 |
  fs,8 r16 fs'16\3 fs8-.\3 fs\3 r16 fs16-.\3 cs8\4 \afterGrace fs4\3 \glissando { \hideNotes e, \unHideNotes } |
  
  %% 32
  \cbreak
  e8 r16 e16 r8 gs8 r8 g'16\3 (gs\3) gs'8-. \afterGrace ds8 \glissando { \hideNotes e, \unHideNotes } |
  e,8 r16 e16 r8 gs8 r8 e'8-.\3 e8\3 cs16\4 e16\3 | e8\3 r16 fs\3 fs8-.\3 fs8\3 ~ fs8\3 a8-.\3 a'16 a e,8\4 |
  
  %% 35
  e8-.\3 r16 fs\3 fs8-.\3 fs8\3 ~ fs\3 fs\3 fs\3 cs\4 |
  b8.-"cresc." b16 b8-. b8 ~ b16 fs-. b-. fs-. b8 gs |
  e8. e16 e8-. e r16 gs16 gs8 gs e8 \bar "||"
  
  %% 38
  \sbreak
  \mark \markup { \box D \small \musicglyph #"scripts.segno" }
  a8. \f a16-. a8-. a8 r16 a16 e'16 fs a8 r8 |
  a,8. a16  a8-. a8 r8 e8 fs-. a16 fs |
  a8. a16-. a8-. a8 r16 a16 e'16 fs a8 r8 |
  
  %% 41
  \cbreak
  a,8. a16-. a8-. a8 r16 e16-. e8 fs e16-. fs-. | 
  a8. a16-. a8-. a8 r16 a16 e'16 fs a8 r8 |
  
  %% 43
  \cbreak
  a,8. a16-. a8-. a8 r16 e16-. e8 fs e16 fs | 
  a8. a16-. a8-. a8 r16 a16 a8-. gs4 |
  fs8. fs16-. fs8-. e r16 e16 e8-. \grace gs (a8) e8 \bar "||"
  
  %% 46
  \sbreak
  \mark \markup { \box E }
  e8 r16 e16 e8-. e r16 b'16 e b e8 b16-. c-. |
  cs8. cs16 r8 cs8 ~ cs16 cs16 ds16-.\3 ds-.\3 f8\3 ds16-.\3 f-.\3 |
  fs8\3 r16 fs16\3 fs8-.\3 fs\3 r16 fs16\3 fs8-.\3 fs8\3 e8-.\3 |
  
  %% 49
  \cbreak
  ds8\3 r16 ds16\3 ds8-.\3 ds\3 r ds-.\3 ds\3 b16\4 	cs |
  d8.\3 a16\4 d8-.\3 d\3 r16 a16\4 d8-.\3 d16->\3 cs8.\3 |
  b8. b16 b8-. b8 ~ b16 fs-. b-. fs-. e8 fs |
  
  %% 52
  \cbreak
  a8. a16-. a8-. a r16 a16-. a8 e'16 fs a8 |
  a,8. a16-. a8-. a r16 e16 e e fs8 e16 fs |
  a8. a16-. a8-. a r16 a16-. a8 e'16 fs a8 \GotoCoda \bar "||"
  
  %% 55
  a,8. a16-. a8-. a8 r16 a16 a-. a e8 e16-. fs-.  |
  a8. a16 a8 r8 r8 e'16 \> fs a8-. a,8 |
  a8. a16-. a8 r8 r8 e'16 fs a8-. fs,16 gs \! \bar "||"
  
  %% 58
  \sbreak
  \mark \markup { \box F }
  a8. a16-. a8-. a8 r16 a16 a8-. e'16 fs a8 | 
  a,8. a16-. a8-. a8 r16 e16 e8 fs8-. a16 fs |
  a8. a16-. a8-. a8 r16 a16 a8-. e'16 fs a8 | 
  
  %% 61
  \cbreak
  fs8\3 r16 e\3 fs8-.\3 fs\3 r16 a16\2 fs\3 cs\4 \afterGrace fs4\3 \glissando { \hideNotes e, \unHideNotes } |
  e8 r16 e16 r8 gs8 r8 e'8\3 g16\2 (gs\2) b8-.\1 |
  e,,8 r16 e16 r8 gs8 r8 e'8\3 g16\2 (gs\2) b8-.\1 |
  
  %% 64
  \cbreak
  e,,8-. r16 fs16 r8 fs8-. r8 e'16 f fs8 fs, |
  e'8-. r16 e16 fs8-. fs ~ fs fs-. r16 cs8. |
  
  %% 66
  \cbreak
  b8 r16 b16-. r8 b8 r16 d16\3 \grace cs\3 (d8-.\3) \grace cs\3 (d8\3) b |
  e,8 r16 e16 d'16\3 e, r16 d'16\3 r16 e,16 d'8\3 r16 d8->\3 \DScoda b16 \bar "||"
  
  %% 68
  \sbreak
  \Coda
  a8 r16 a16 a8-. a8 r16 e16 e8-. fs-. e16 fs % \bar "||"
  
  %% 69
  \sbreak
  \mark \markup { \box G Open for vamp }
  \repeat volta 2 {
    a8 r16 a16 a8-. a8 r16 a16 a-. a e'16 (fs) a8 | 
    a,8 r16 a16 a8-. a8 r16 e16 e-. e a-. e a8 |
  } \alternative {
      %% 71
     {
       a8 \mark \markup { For Vamp} r16 a16 a8-. a8 r16 a16 a8-. e'16 (fs) a8 |
       a,8 r16 a16 a8-. a8 r16 e16 e-. e-. fs-. e-. fs-. e-. |
     }
     {
       e8.->  \mark \markup { Last X } a16-^-. r8 a8-> ~ a2 \fermata \bar "|."
     }
  }
  
  
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
 
  s4 |
  
  %% 2
  a1 | d/a | a | d/a | a | 
  
  %% 7
  d1/a | a2:maj9 a4 e/gs |
  d4/fs~ d8/fs a8/e~ a2/e |
  
  %% 10
  e1 | cs:7 | fs:min
  
  %% 13
  b1/ds | d | b:min7 | a |
  
  %% 17
  d1/a | a2~ a16 d16/a ~ d4/a ~ d8/a | a1 |
  
  %% 20
  a1 | d/a | a |


  %% 23
  fs1:min | e | e |
  
  %% 26
  e8. fs16:min ~ fs2.:min |
  e8. fs16:min ~ fs2.:min |
  a1 |
  
  %% 29
  d1/a | a | fs:min |
  
  %% 32
  e1 | e | e8. fs16:min ~ fs2.:min |
  
  %% 35
  e8. fs16:min ~ fs2.:min | b1:min7 | e |
  
  %% 38
  a1 | b:min7/a | a |
  
  %% 41
  b1:min7/a | a |
  
  % 43
  b1:min7/a | e8./a a16 ~ a4. e/gs | d2/fs a |
  
  %% 46
  e1 | cs:7 | fs:min |
  
  %% 49
  b1:7/ds | d | b:min7 |
  
  %% 52
  a1 | d/a | a |
  
  %% 55
  d1/a | a2 ~ a8 d4./a | a2 ~ a8 d4./a | 
  
  %% 58
  a1 | d/a | a |
  
  %% 61
  fs1:min | e | e 
   
  %% 64
  e8. fs16:min ~ fs2.:min
  e8. fs16:min ~ fs2.:min

  %% 66
  b1:min7 | e
  
  %% 68
  d1/a
  
  %% 69
  a1 | b:min7/a |
  
  %% 71
  a1 | b:min7/a | e8./gs a16 s8 a8 ~ a2 |
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
