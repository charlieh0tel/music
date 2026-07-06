\version "2.22.1"

\header {
  title = "Come and Get Your Love"
  composer = "Lolly Vegas"
  arranger = "Arranged by www.LearnToPlaySong.com"
}

Chords = \chordmode {
  \set chordChanges = ##t
  e1:m7 a1 d1:maj7 g1
  e:m7 a d:maj7 g
  e:m7 a d:maj7 g
  e:m7 a d:maj7 g
  e:m7 a d:maj7 g
  e:m7 a d:maj7 g
  e:m7 a d:maj7 g
  e:m7 a d:maj7 g
}

VocalMelody = \relative c' {
  \key g \major
  \time 4/4
  \tempo "Moderately" 4 = 112

  % Intro
  r2 r4. g8 | a4 g a g | d'4. d8~ d4 r | r2. g,8 a |
  b4 g a g | d'4. d8~ d4 r | r2. g,8 a | b4 g a g |

  % Verse
  d'4 d d d | c4 c c c | b4 b b b | a4 a a a |
  d'4 d d d | c4 c c c | b4 b b b | a4 a a a |
  d'4 d d d | c4 c c c | b4 b b b | a4 a a a |
  d'4 d d d | c4 c c c | b4 b b b | a4 a a a |

  % Chorus
  g'4. g8 g4 g | a4. a8 a4 a | d,4. d8 d4 d | g,4. g8 g4 g |
  g'4. g8 g4 g | a4. a8 a4 a | d,4. d8 d4 d | g,4. g8 g4 g |
  g'4. g8 g4 g | a4. a8 a4 a | d,4. d8 d4 d | g,4. g8 g4 g |
  g'4. g8 g4 g | a4. a8 a4 a | d,4. d8 d4 d | g,4. g8 g4 g |

  % Bridge
  c'4. b8 a4 g | a4. g8 fis4 e | d4. c8 b4 a | g4. fis8 e4 d |
  c'4. b8 a4 g | a4. g8 fis4 e | d4. c8 b4 a | g2. r4 |

  % Outro
  g'4. g8 g4 g | a4. a8 a4 a | d,4. d8 d4 d | g,4. g8 g4 g |
  g'4. g8 g4 g | a4. a8 a4 a | d,4. d8 d4 d | g,4. g8 g4 g |
  \bar "|."
}

GuitarTab = \relative c {
  % Intro Riff
  r2 r4. <g b d>8 | <a c e>4 <g b d> <a c e> <g b d> | <d fis a>4. <d fis a>8~ <d fis a>4 r | r2. <g b d>8 <a c e> |
  <b d g>4 <g b d> <a c e> <g b d> | <d fis a>4. <d fis a>8~ <d fis a>4 r | r2. <g b d>8 <a c e> | <b d g>4 <g b d> <a c e> <g b d> |

  % Verse Chords
  <d' fis a>4 <d fis a> <d fis a> <d fis a> | <c e g>4 <c e g> <c e g> <c e g> | <b d g>4 <b d g> <b d g> <b d g> | <a c e>4 <a c e> <a c e> <a c e> |
  <d' fis a>4 <d fis a> <d fis a> <d fis a> | <c e g>4 <c e g> <c e g> <c e g> | <b d g>4 <b d g> <b d g> <b d g> | <a c e>4 <a c e> <a c e> <a c e> |
  <d' fis a>4 <d fis a> <d fis a> <d fis a> | <c e g>4 <c e g> <c e g> <c e g> | <b d g>4 <b d g> <b d g> <b d g> | <a c e>4 <a c e> <a c e> <a c e> |
  <d' fis a>4 <d fis a> <d fis a> <d fis a> | <c e g>4 <c e g> <c e g> <c e g> | <b d g>4 <b d g> <b d g> <b d g> | <a c e>4 <a c e> <a c e> <a c e> |

  % Chorus Chords
  <g' b d>4. <g b d>8 <g b d>4 <g b d> | <a c e>4. <a c e>8 <a c e>4 <a c e> | <d, fis a>4. <d fis a>8 <d fis a>4 <d fis a> | <g, b d>4. <g b d>8 <g b d>4 <g b d> |
  <g' b d>4. <g b d>8 <g b d>4 <g b d> | <a c e>4. <a c e>8 <a c e>4 <a c e> | <d, fis a>4. <d fis a>8 <d fis a>4 <d fis a> | <g, b d>4. <g b d>8 <g b d>4 <g b d> |
  <g' b d>4. <g b d>8 <g b d>4 <g b d> | <a c e>4. <a c e>8 <a c e>4 <a c e> | <d, fis a>4. <d fis a>8 <d fis a>4 <d fis a> | <g, b d>4. <g b d>8 <g b d>4 <g b d> |
  <g' b d>4. <g b d>8 <g b d>4 <g b d> | <a c e>4. <a c e>8 <a c e>4 <a c e> | <d, fis a>4. <d fis a>8 <d fis a>4 <d fis a> | <g, b d>4. <g b d>8 <g b d>4 <g b d> |

  % Bridge
  <c' e g>4. <b d g>8 <a c e>4 <g b d> | <a c e>4. <g b d>8 <fis a d>4 <e g c> | <d fis a>4. <c e g>8 <b d g>4 <a c e> | <g b d>4. <fis a d>8 <e g c>4 <d fis a> |
  <c' e g>4. <b d g>8 <a c e>4 <g b d> | <a c e>4. <g b d>8 <fis a d>4 <e g c> | <d fis a>4. <c e g>8 <b d g>4 <a c e> | <g b d>2. r4 |

  % Outro
  <g' b d>4. <g b d>8 <g b d>4 <g b d> | <a c e>4. <a c e>8 <a c e>4 <a c e> | <d, fis a>4. <d fis a>8 <d fis a>4 <d fis a> | <g, b d>4. <g b d>8 <g b d>4 <g b d> |
  <g' b d>4. <g b d>8 <g b d>4 <g b d> | <a c e>4. <a c e>8 <a c e>4 <a c e> | <d, fis a>4. <d fis a>8 <d fis a>4 <d fis a> | <g, b d>4. <g b d>8 <g b d>4 <g b d> |
}


\score {
  <<
    \new ChordNames { \Chords }
    \new Staff <<
      \clef "treble_8"
      \VocalMelody
    >>
    \new TabStaff \with { \consists "Volta_engraver" } <<
      \GuitarTab
    >>
  >>
  \layout { }
  \midi { }
}
