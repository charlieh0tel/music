% LilyBin

\version "2.18.0"

\header {
  piece = \markup { \fontsize #4 \bold "Good Times" }
  opus = \markup { \italic "Chic" }
}

\paper { 
  left-margin = 1.0\in
  right-margin = 0.5\in
}

%{
https://nzmusician.co.nz/lessons/bass-in-your-face/

The second tune, the one from the 1970s, is Good Times by Chic (in
1979), whose bassist Bernard Edwards was co-composer and producer for
the band (along with guitarist, Nile Rogers). Both Edwards and Rogers
produced, together and individually, hits for several other artists
such as Diana Ross, Carly Simon, Madonna, Rod Stewart and The Power
Station. Needless to say, Chic mixes had a bass in your face
effect –which is, of course, the way it should be – check out his
playing on Everybody Dance and Le Freak on Youtube.

The Good Times bass line (which bears a strong similarity to Roxy
Music’s Love Is The Drug from 1975) uses the E Dorian/Mixolydian (a
little of both in bars 1 and 2)) and notes from the A Mixolydian scale
(bars 3 and 4) for its construction. While the guitar plays Em7 to
E7sus, the bass has an ascending line from low E through F#, G and A
with the important major 6 rising to the b7 – C# to D – before moving
up to E an octave higher.  It then moves down to A on a semiquaver
(1/16 note) push for the next two bar phrase. This phrase has the
guitar playing Asus4 to A6 (A Mixolydian by the way is A, B, C#, D, E,
F#, G, A, although this bass line only uses low A and the higher F#
and G – see the tablature). This four bar sequence is repeated six
times before changing slightly for the verse line, which has similar
guitar chords.

%}

my_notes = \relative c,, {
  \clef "bass_8"
  \key g \major
  \time 4/4
  %%\set Timing.beamExceptions = #'()
  %%\set Timing.baseMoment = #(ly:make-moment 1/4)
  %%\set Timing.beatStructure = #'(1 1 1 1)
  \tempo 4 = 100

  e4-. e4-. e4-. r8. e16 |
  e16 e16 fis8 g8 a8 b8 cis8 d8 e16 a,16 |
  \break
  \repeat volta 6 {
    \bar "[|:"
    r4 a4-. a4-. r8. a16 |
    a16 a16 fis'16 a,16 g'16 a,16 fis'8 a,8. a16
      b16 e,16 g8
    \bar ":|]"
  }
}

my_music = <<
  \new Staff {
    \set Staff.midiInstrument = #"electric bass (finger)"
    \my_notes
  }
  \new TabStaff
  \with { stringTunings = #bass-tuning } 
  { 
    \set TabStaff.minimumFret = #0
    \set TabStaff.restrainOpenStrings = ##t
    \my_notes
  }
>>
  
\score {
  \my_music
  \layout {
    \context {
      \Score
    }
  }
}

\score {
  \unfoldRepeats
  \my_music
  \midi {}
}

