% LilyBin

\version "2.18.0"
\include "english.ly"
\include "articulate.ly"

\header {
  piece = \markup { \fontsize #4 \bold "As (Always) - Gene Harris" }
  opus = \markup { \italic "Stevie Wonder / Gene Harris" }
}

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 1\in
  bottom-margin = 1\in
}

cbreak = { 
  \break
} 

sbreak = { \break }

global = {
  \tempo "Soul/R&B" 4 = 100
  \time 4/4
  %\compressFullBarRests
  %\override MultiMeasureRest.expand-limit = #2
}

my_notes = \relative c {
  \clef "bass_8"
  \key b \major

  \partial 2 r4 r4 \bar "||" 
  \compressMMRests { \override MultiMeasureRest.expand-limit = #3 R1*4 } \bar "||"
  
  %% A
  \mark \markup { \box A \italic { Vocals } } 
  \compressMMRests { \override MultiMeasureRest.expand-limit = #3 R1*7 } |
  
  r2 r4 r8. b16 \mp \bar "||"               
  
  %% B
  \sbreak
  \mark \markup { \box B }
  \set Score.currentBarNumber = #10
  b,4-. r4 b16 b16 r8 r8. b16 | 
  e16 e16 r8 r4 r16 g'16 (gs16 ~ <e, gs'>16 ~ <e gs'>4) |
  b-. r8. fs16 b b r8 r8. b16 |
  e4-. r4 \< b''8\harmonic r8 b,8\harmonic r8 \! |
  
  \repeat volta 2 {
    %% C
    \mark \markup { \box C }
    b,4-. \mf r8. fs16 b b gs fs r8. b16 |
    e4-. r8. b16 e8 r16 b e b d cs |
    b4-. r8. fs'16 b8-. b,-. r16 b r e, |
    a4-. r8. e16 a16 a r8 r16 fs gs8-. |
    b4-. r8. fs16 b8-. b8-. r16 b r fs' |
    e4-. r8. b16 e b e8-. r16 e,8. |
    gs4-. r8. gs16 a4 ds4 | 
    gs,4-> \< gs4-> cs4-> fs,4-> \! \bar "||"
    
    %% D
    \mark \markup { \box D }
    b4-. \mf r8. fs'16 b8-. b,-. r16 b r e |
    e4-. r8. b16 e e cs b r8. fs16 |
    b4-. r4 cs'16 fs, r8 r16 b16 r8 |
    a,4-. r8. e16 a8-. a8-. r16 a16 r8 |
    b4-. r8. fs16 b8-. b8-. r16 b16 r16 fs'16 |
    e4-. r8. b16 e16 b e8-. r16 e r fs,16 |
    gs2-> \< as4->-. ds4->-. \! \bar "||"
    
    %% E
    \sbreak
    \mark \markup { \box E }
    gs,8 \f gs r16 gs r gs as8 as r16 as r as | 
    b8 b r16 b r bs16 cs cs es,8 fs g |
    gs8 \f gs r16 gs r gs as8 as r16 as r as | 
    b8 b r16 b r bs16 cs cs es,8 fs g |
    gs8 gs r16 gs r gs as as' as,8 as' as, |
    \cbreak
    b8 b r16 b r bs16 cs cs es,8 fs g |
    gs8 \f gs r16 gs r gs as8 as r16 as r as
    b8 \< b r16 b r8 f'4-> f4-> \! \bar "||"
    
    %% F
    \sbreak
    \mark \markup { \box F }
    e8-. \> e8-. r8. b16 e b e8 r16 e r cs \! |
    b8-. \mf b8-. r8. fs'16 cs' fs,16 b8-. r16 b r ds, |
    e8-. e8-. r8. b16 e b e8 r16 cs8. \glissando |
    d4\3 ~ d16 a'\2 e' a,\2 d8 d,8 ~ d16 d' d,8 |
    e4-. r8. b16 e b e8 r16 e r as, |
    b4-. r8. fs'16 cs' fs, b8-. r16 as, b bs |
    cs4-. r8. gs16 cs8-. cs8-. r16 cs r8 |   
  } \alternative {
    {
      gs4-.-> \< gs4-.-> cs-> fs,-> \! | 
    }
    {
      gs4-.-> \< gs4-.-> cs-> fs,-> \! \bar "||"
    }
  }
   
  %% G
  \sbreak
  \mark \markup { \box G }
  b4-. \mf r8. fs'16 cs' fs, b8-. r16 b r ds, |
  e4-. r8. b16 e b e8-. r16 e r fs |
  b,4-. r8. fs16 b fs b8-. fs gs |
  << { a2 ~ a8 a4 a8 } \\ { s4 b'8 bs8 cs4 a'4-. } >> |
  b,,4-. r8. fs16 b8-. b8-. r16 b fs' f |
  e4 b16 gs e8 ~ e4 e8 fs16 fs | gs2-> \< as4-.-> ds-.-> \! |
  
  %% H
  \sbreak
  \repeat volta 2 {
    \mark \markup { \box H }
    gs,8 \f gs r16 gs r gs as8 as r16 as r as | 
    b8 b r16 b r bs16 cs cs es,8 fs g |
    gs8 \f gs r16 gs r gs as8 as r16 as r as |
    b8 b r16 b r bs16 cs cs es,8 fs g |
    gs8 gs r16 gs r gs as as' r as, as'8 as, |
    \cbreak
    b8 b r16 b r bs cs cs es,8 fs g |
    gs8 gs r16 gs r gs as8 as r16 as r as | 
  } \alternative {
    {
      b8 b r16 b r8 cs16 cs es,8 fs g |
    }
    {
      b8 \< b r16 b r8 cs16 cs es,8 fs g \! |
    }
  }
  
  %%\sbreak
  \mark \markup { \box I }
  gs8 gs r16 gs r gs as8 as r16 as r as | 
  b8 b r16 b r bs16 cs cs es,8 fs g |
  gs8 gs r16 gs r gs as8 as r16 as r as | 
  b8 b r16 b r bs16 cs cs es, es fs8 g |
  gs8 gs r16 gs r gs as as' r as, as'8 as, |
  b8 b r16 b r bs16 cs cs es,8 fs g |
  gs8 gs r16 gs r gs as8 as r16 as r as |
  b8 b r16 b r8 cs16 cs es,8 fs g |
}

my_chords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  \partial 2 s4 s4 |
  s1*12 |
  
  %% B
  b2:maj9 b:9 | e1:maj9 | b2:maj9 b:9 | e1:maj9
  
  \repeat volta 2 {
    %% C
    b2:maj9 b:9 | e1:maj9 |
    b1:maj9 | a:maj9 | b2:maj9 b:9 |
    e1:maj9 | gs2:m7 as4:m7 ds:9 | 
    gs4:m7 gs:m6 cs:m7 fs:9sus4 |
    
    %% D
    b2:maj9 b:9 | e1:maj9 | b1:maj9 |
    a1:maj9 | b2:maj9 b2:9 | e1:maj9 | gs2:min7 as4:min7 ds:9 
    
    %% E
    gs2:min7 ds:7/as | gs2:m7/b cs:7 |
    gs2:min7 ds:7/as | gs2:m7/b cs:7 |
    gs2:min7 ds:7/as | gs2:m7/b cs:7 |
    gs2:min7 ds:7/as | gs2:min7/b f:9.5- |
    
    %% F
    e1:maj9 | b:maj9 | e:maj9 | 
    d:maj9 | e:maj9 | b:maj9 |
    cs1:min7 | 
  } \alternative {
    {
      gs4:min7 gs:min6 cs:min7 fs:9sus4 |
    }
    {
      gs4:min7 gs:min6 cs:min7 fs:9sus4 |
    }
  }
  
  %% G
  b2:maj9 b:9 | e1:maj9 | b1:maj9 |
  a1:maj9 | b2:maj9 b:9 | e1:maj9 |
  g2:min7 as4:min7 ds:9 |
  
  %% H
  \repeat volta 2 {
    gs2:min7 ds:7/as | gs2:m7/b cs:7 |
    gs2:min7 ds:7/as | gs2:m7/b cs:7 |
    gs2:min7 ds:7/as | gs2:m7/b cs:7 |
    gs2:min7 ds:7/as |
  } \alternative {
    {
      gs2:min7/b cs:7 |
    }
    {
      gs2:min7/b cs:7 \bar "||"
    }
  }
  
  %% I
  gs2:min7 ds:7/as | gs2:m7/b cs:7 |
  gs2:min7 ds:7/as | gs2:m7/b cs:7 |
  gs2:min7 ds:7/as | gs2:m7/b cs:7 |
  gs2:min7 ds:7/as | gs2:m7/b cs:7 |

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
  \articulate
  \removeWithTag #'scoreOnly \unfoldRepeats \my_music
  \midi {}
}
