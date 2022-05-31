% LilyBin

\version "2.18.0"
\include "english.ly"
\include "../lib/dsmarks.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Dancing Queen" }
  opus = \markup { \italic "ABBA" }
}

\paper { 
  left-margin = 1.0 \in	
  right-margin = 0.5 \in
  top-margin = 1.0 \in
  bottom-margin = 1.0 \in
}

%%#(set-global-staff-size 15)
		
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
  cs8. cs16-. cs8 cs8~ cs16 ds16-. ds8 f8 ds16 f16 |
  fs8. fs16-. fs8-. fs8 r16 fs16 fs8 r16 e8. | 
  
  %% 13
  \cbreak
  ds8. ds16-. ds8-. ds8~ ds16 ds8. b'16-> ds,8. |
  d8. d16-. d8-. d8 r8 d8 r16 cs8.-> |
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
  fs8 r16 fs fs8-. fs r16 fs-. cs8 \afterGrace fs4 \glissando { \hideNotes e, \unHideNotes } |
  e8 r16 e16 r8 gs8 r8 e'8 g16 (gs) b8-. |
  e,,8 r16 e16 r8 gs8 r8 e'8 g16 (gs) b8-. |
  
  %% 26
  e,8 r16 fs16 fs8-. fs8 ~ fs16 fs e8-. fs8 fs,8-. |
  e-. e16 fs r8 fs8 ~ fs16 fs-. fs fs fs8 fs16 gs \bar "||"
  
  %%\sbreak
  \mark \markup { \box C }
  a8. a16-. a8-. a8 r16 a16 a8-. e'16 fs a8 |
  
  %% 29
  \sbreak
  a,8. a16-. a8-. a8 r16 e16-. e e fs8-. a16 fs | 
  a8. a16-. a8-. a8 r16 a16 a8-. e'16 fs a8 |
  fs,8 r16 fs'16 fs8-. fs r16 fs16-. cs8 \afterGrace fs4 \glissando { \hideNotes e, \unHideNotes } |
  
  %% 32
  \cbreak
  e8 r16 e16 r8 gs8 r8 g'16 (gs) gs'8-. \afterGrace ds8 \glissando { \hideNotes e, \unHideNotes } |
  e,8 r16 e16 r8 gs8 r8 e'8-. e8 cs16 e16 | e8 r16 fs fs8-. fs8 ~ fs8 a8-. a'16 a e,8 |
  
  %% 35
  e8-. r16 fs fs8-. fs8 ~ fs fs fs cs |
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
  cs8. cs16 r8 cs8 ~ cs16 cs16 ds16-. ds-. f8 ds16-. f-. |
  fs8 r16 fs16 fs8-. fs r16 fs16 fs8-. fs8 e8-. |
  
  %% 49
  \cbreak
  ds8 r16 ds16 ds8-. ds r ds-. ds b16 cs |
  d8. a16 d8-. d r16 a16 d8-. d16-> cs8. |
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
  b/ds | d | b:min7 | a |
  
  %% 17
  d/a | a2~ a16 d16/a ~ d4/a ~ d8/a | a1 |
  
  %% 20
  a1 | d/a | a |


  %% 23
  fs:min | e | e |
  
  %% 26
  e8. fs16:min ~ fs2.:min |
  e8. fs16:min ~ fs2.:min |
  a1 |
  
  %% 29
  d1/a | a | fs:min |
  
  %% 32
  e | e | e8. fs16:min ~ fs2.:min |
  
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
  b:7/ds | d | b:min7 |
  
  %% 52
  a | d/a | a |
  
  %% 55
  d/a | a2 ~ a8 d4./a | a2 ~ a8 d4./a | 

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
