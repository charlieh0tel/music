% LilyBin

\version "2.18.0"
\include "english.ly"
\include "../lib/dsmarks.ly"

\header {
  piece = \markup { \fontsize #4 \bold "Just What I Needed" }
  opus = \markup { \italic "The Cars" }
}

\paper { 
  left-margin = 1.0 \in
  right-margin = 0.5 \in
  top-margin = 0.5 \in
  bottom-margin = 1.0 \in
}

#(set-global-staff-size 14)

cbreak = { 
  \break
} 

sbreak = { \break }

global = {
  \time 4/4
  \tempo "Rock" 4 = 135
}

my_notes = \relative c {
  \clef "bass_8"
  \key e \major

  r2 r4 e,\3 | r2 r4 e\3 | r2 r4 e\3 | r2 r4 e\3 |
  r2 r4 e,8 e | r2 r4 e8 e |  r2 r4 e8 e | r2 r4 e8 e |
	
  \sbreak
  \repeat volta 2 {
    \Segno
    e'8\3^"Tacet 1st X" e\3 e\3 e\3 e\3 e\3 e\3 e\3 | 
    b\4^"Enter 1st X" b\4 b\4 b\4 b\4 b\4 b\4 b\4 | cs cs cs cs cs cs cs cs | gs gs gs gs gs gs gs gs |
    \cbreak
    e'8\3 e\3 e\3 e\3 e\3 e\3 e\3 e\3 | b\4 b\4 b\4 b\4 b\4 b\4 b\4 b\4 | cs cs cs cs cs cs cs cs | gs gs gs gs gs gs gs gs |
    \cbreak
    e'8\3 e\3 e\3 e\3 e\3 e\3 e\3 e\3 | b\4 b\4  b\4 b\4 b\4 b\4 b\4 b\4 | cs cs cs cs cs cs cs cs | gs gs gs gs gs gs gs gs |
    \cbreak
    e'8\3 e\3 e\3 e\3 e\3 e\3 e\3 e\3 | b\4 b\4^"(B/D# 2nd X only)" b\4 b\4 b\4 b\4 b\4 b\4 | gs gs gs gs gs gs gs gs | a\4 a\4 a\4 a\4 a\4 a\4 a\4 a\4 |
  }
  \alternative {	
    {	
      \cbreak
      e'8\3 e\3 e\3 e\3 e\3 e\3 e\3 e\3 | b\4 b\4 b\4 b\4 b\4 b\4 b\4 b\4 | cs cs cs cs cs cs cs cs | gs gs gs gs gs gs gs gs |
      \cbreak
      e'8\3 e\3 e\3 e\3 e\3 e\3 e\3 e\3 | b\4 b\4 b\4 b\4 b\4 b\4 b\4 b\4 | cs cs cs cs cs cs cs cs | a\4 a\4 a\4 a\4 a\4 a\4 a\4 a\4 |
    }
    {
      \cbreak
      b8\4 cs\4 e\3 b\4 ~b4 r8 a\4 | 
    }
  }
  
  a4\4 r8 cs\4 cs\4 b\4 b4\4 | b8\4 cs\4 e\3 b\4 ~b4 r8 a\4 | a4\4 r8 cs8\4 ~cs2 |
  \cbreak
  b8\4 cs\4 e\3 b\4 ~b4 r8 a\4 | a4\4 r8 cs\4 cs\4 b\4 b4\4 | b8\4 cs\4 e\3 b\4 ~b4 r8 a\4 |
  \time 2/4 a4\4 r8 a\4 | 

  \sbreak
  \time 4/4
  cs8 cs cs cs cs cs cs cs | cs cs cs cs cs cs cs \GotoCoda cs \bar "||" 	
  e8\3 e\3^"SOLO" e\3 b\4 b\4 b\4 b\4 b\4 | cs cs cs gs gs gs gs gs |
  \cbreak
  e'8\3 e\3 e\3 b\4 b\4 b\4 b\4 b\4 | cs cs cs a\4 a\4 a\4 a\4 a\4 |
  e'\3 e\3 e\3 b\4 b\4 b\4 b\4 b\4 | cs cs cs gs gs gs gs gs |
  \cbreak
  e'8\3 e\3 e\3 b\4 b\4 b\4 b\4 b\4 | cs cs cs a\4 a\4 a\4 a\4 a\4-"D.S al 2cd ending al coda" \bar "||"
  
  \sbreak
  \Coda
  b8\4 cs\4 e\3 b\4 ~b4 r8 a\4 | a4\4 r8 cs\4 cs\4 b\4 b4\4 | 
  b8\4 cs\4 e\3 b\4 ~b4 r8 a\4 | a4\4 r8 cs8\4 ~cs2 |
  \cbreak
  b8\4 cs\4 e\3 b\4 ~b4 r8 a\4 | a4\4 r8 cs\4 cs\4 b\4 b4\4 | 
  b8\4 cs\4 e\3 b\4 ~b4 r8 a\4 | \time 2/4 a4\4 r8 a\4 | 

  \cbreak
  \time 4/4
  cs8\4 cs\4 cs\4 cs\4 cs\4 cs\4 gs'\3 gs\3 | cs\2 cs\2 gs\3 gs\3 gs\3 gs\3 cs,\4 cs\4 |
  e\3 e\3 e\3 b\4 b\4 b\4 b\4 b\4 | cs\3 cs\3 cs\3 gs gs gs gs gs |
  
  \cbreak
  e'\3 e\3 e\3 b\4 b\4 b\4 b\4 b\4 | cs cs cs a\4 a\4 a\4 a\4 a\4 | 
  e'\3 e\3 e\3 b\4 b\4 b\4 b\4 b\4 | cs\3 cs\3 cs\3 gs gs gs gs gs |
  
  \cbreak
  e'\3 e\3 e\3 b\4 b\4 b\4 b\4 b\4 | cs cs cs a\4 a\4 a\4 a\4 a\4 | 
  e'\3 e\3 e\3 b\4 b\4 b\4 b\4 b\4 | cs\3 cs\3 cs\3 gs gs gs gs gs |

  \cbreak
  e'\3 e\3 e\3 b\4 b\4 b\4 b\4 b\4 | cs cs cs a\4 a\4 a\4 a\4 a\4 | 
  e'\3 e\3 e\3 b\4 b\4 b\4 b\4 b\4 | cs\3 cs\3 cs\3 gs gs gs gs gs |

  \cbreak
  a\4 a\4 a\4 b\4 b\4 b\4 b\4 cs\4~ | cs1 \bar "|."
}

my_chords = \chordmode {
  e1 | s | s | s |
  s | s | s | s |
  \repeat volta 2 {
    e1 | b | cs:min | gs |
    e1 | b | cs:min | gs |
    e1 | b | cs:min | gs |
    e1 | b | gs | a |
  }
  \alternative {
    {  e1 | b | cs:min | gs | e1 | b | cs:min | a | }
    { e2 b | }
  }
  
  a4. cs:min b4 | e2 b | a4 s8 cs8:min ~cs2:min |
  e2 b | a4. cs:min b4 | e2 b  | \time 2/4 a2 |
  
  \time 4/4
  cs1:min | cs1:min | e2 b | cs:min gs:min | 
  e2 b2 | cs:min a | e b | cs:min gs:min | 
  e b | cs:min a|
  
  e2 b | a4. cs:min b4 | e2 b | a4 s8 cs8:min ~cs2:min |
  e2 b | a4. cs:min b4 | e2 b  | \time 2/4 a2 |
  
  \time 4/4
  cs1:min | cs1:min | e2 b | cs:min gs:min | 
  e2 b | cs:min a | e b | cs:min gs:min |
  e b | cs:min a | e b | cs:min gs:min |
  e b | cs:min a | e b | cs:min gs:min |
  a b  | cs1:min |
}


ticktock = \drummode {
  \repeat unfold 40 {
    hiwoodblock 4 lowoodblock lowoodblock lowoodblock
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
      \Score \override StringNumber #'stencil = ##f 
    }
  }
}

\score {
  \removeWithTag #'scoreOnly \unfoldRepeats \my_music
  \midi {}
}
