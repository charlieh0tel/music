\version "2.24.0"

% Defining the chord progression
chordsPart = \new ChordNames {
  \chordmode {
    % Page 1 (Measures 2-30)
    \set chordChanges = ##t
    s1*1 | % Measure 1 (implicit rest before pickup)
    e1:maj7 | e1:maj7/a | d1 | b1:m7 | e1:maj7 | e1:maj7/a | d1 | b1:m7 |
    e1:maj7 | e1:maj7/a | d1 | b1:m7 | e1:maj7 | e1:maj7/a | d1 | b1:m7 |
    e1:maj7 | e1:maj7/a | d1 | b1:m7 | e1:maj7 | e1:maj7/a | d1 | b1:m7 |
    e1:maj7 | e1:maj7/a | d1 | b1:m7 | e1:maj7 | e1:maj7/a | d1 | b1:m7 |
    % Page 2 (Measures 31-55)
    e1:maj7 | a7 | d1 | b1:m7 | e1:maj7 | a7 | d1 | b1:m7 |
    e1:maj7 | a7 | d1 | b1:m7 | e1:maj7 | f:m | g1 | a1 |
    e1:maj7 | g/a | d1 | b1:m7 | e1:maj7 | g/a | d1 | b1:m7 |
    e1:maj7 | g/a | d1 | b1:m7 | e1:maj7 | g/a | d1 | b1:m7 |
    % Page 3 (Measures 56-103)
    e1:maj7 | a7 | d1 | b1:m7 | e1:maj7 | a7 | d1 | b1:m7 |
    e1:maj7 | a7 | d1 | b1:m7 | e1:maj7 | a7 | d1 | b1:m7 |
    d1 | b1:m7 | e1:maj7 | e1:maj7/a | d1 | b1:m7 | e1:maj7 | e1:maj7/a |
    d1 | b1:m7 | e1:maj7 | e1:maj7/a | d1 | b1:m7 | e1:maj7 | e1:maj7/a |
    d1 | b1:m7 | e1:maj7 | a7 | d1 | b1:m7 | e1:maj7 | a7 |
    d1 | b1:m7 | e1:maj7 | f:m | g1 | a1 | e1:maj7 | e1:maj7/a |
    d1 | b1:m7 | e1:maj7 | e1:maj7/a | d1 | b1:m7 | e1:maj7 | e1:maj7/a |
    d1 | b1:m7 |
  }
}

% Defining guitar part in standard notation (transcribed from staves)
guitarPart = \relative c' {
  \key d \major
  \time 4/4
  \clef "treble_8" % Guitar-friendly clef
  % Page 1 (Measures 2-30)
  s1 | % Measure 1 (implicit rest before pickup)
  e8. e16~ e4 fis8. fis16~ | % 2 (EM7, EM7/A)
  fis4 d4 d4 d4 | % 3 (D)
  r4 fis4 fis4 fis4 | % 4 (BM7)
  fis4 e4 e4 e4 | % 5 (EM7)
  e8. e16~ e4 fis8. fis16~ | % 6 (EM7/A)
  fis4 d4 d4 d4 | % 7 (D)
  r4 e4 e4 e4 | % 8 (BM7)
  e8. e16~ e4 fis8. fis16~ | % 9 (EM7)
  fis4 d4 d4 d4 | % 10 (EM7/A)
  r4 e4 e4 e4 | % 11 (D)
  e8. e16~ e4 fis8. fis16~ | % 12 (BM7)
  fis4 d4 d4 d4 | % 13 (EM7)
  r4 e4 e4 e4 | % 14 (EM7/A)
  e8. e16~ e4 fis8. fis16~ | % 15 (D)
  fis4 d4 d4 d4 | % 16 (BM7)
  r4 e4 e4 e4 | % 17 (EM7)
  e8. e16~ e4 fis8. fis16~ | % 18 (EM7/A)
  fis4 d4 d4 d4 | % 19 (D)
  r4 e4 e4 e4 | % 20 (BM7)
  e8. e16~ e4 fis8. fis16~ | % 21 (EM7)
  fis4 d4 d4 d4 | % 22 (EM7/A)
  r4 e4 e4 e4 | % 23 (D)
  e8. e16~ e4 fis8. fis16~ | % 24 (BM7)
  fis4 d4 d4 d4 | % 25 (EM7)
  r4 e4 e4 e4 | % 26 (EM7/A)
  e8. e16~ e4 fis8. fis16~ | % 27 (D)
  fis4 d4 d4 d4 | % 28 (BM7)
  r4 e4 e4 e4 | % 29 (EM7)
  e8. e16~ e4 fis8. fis16~ | % 30 (EM7/A)
  % Page 2 (Measures 31-55)
  fis4 d4 d4 d4 | % 31 (D)
  r4 e4 e4 e4 | % 32 (BM7)
  e8. e16~ e4 fis8. fis16~ | % 33 (EM7)
  fis4 d4 d4 d4 | % 34 (A7)
  r4 e4 e4 e4 | % 35 (D)
  e8. e16~ e4 fis8. fis16~ | % 36 (BM7)
  fis4 d4 d4 d4 | % 37 (EM7)
  r4 e4 e4 e4 | % 38 (A7)
  e8. e16~ e4 fis8. fis16~ | % 39 (D)
  fis4 d4 d4 d4 | % 40 (BM7)
  r4 e4 e4 e4 | % 41 (EM7)
  e8. e16~ e4 fis8. fis16~ | % 42 (A7)
  fis4 d4 d4 d4 | % 43 (D)
  r4 e4 e4 e4 | % 44 (BM7)
  e8. e16~ e4 fis8. fis16~ | % 45 (EM7)
  fis4 d4 d4 d4 | % 46 (F#m)
  r4 e4 e4 e4 | % 47 (G)
  e8. e16~ e4 fis8. fis16~ | % 48 (A)
  fis4 d4 d4 d4 | % 49 (EM7)
  r4 e4 e4 e4 | % 50 (G/A)
  e8. e16~ e4 fis8. fis16~ | % 51 (D)
  fis4 d4 d4 d4 | % 52 (BM7)
  r4 e4 e4 e4 | % 53 (EM7)
  e8. e16~ e4 fis8. fis16~ | % 54 (G/A)
  fis4 d4 d4 d4 | % 55 (D)
  % Page 3 (Measures 56-103)
  r4 e4 e4 e4 | % 56 (BM7)
  e8. e16~ e4 fis8. fis16~ | % 57 (EM7)
  fis4 d4 d4 d4 | % 58 (A7)
  r4 e4 e4 e4 | % 59 (D)
  e8. e16~ e4 fis8. fis16~ | % 60 (BM7)
  fis4 d4 d4 d4 | % 61 (EM7)
  r4 e4 e4 e4 | % 62 (A7)
  e8. e16~ e4 fis8. fis16~ | % 63 (D)
  fis4 d4 d4 d4 | % 64 (BM7)
  r4 e4 e4 e4 | % 65 (EM7)
  e8. e16~ e4 fis8. fis16~ | % 66 (A7)
  fis4 d4 d4 d4 | % 67 (D)
  r4 e4 e4 e4 | % 68 (BM7)
  e8. e16~ e4 fis8. fis16~ | % 69 (EM7)
  fis4 d4 d4 d4 | % 70 (A7)
  r4 e4 e4 e4 | % 71 (D)
  e8. e16~ e4 fis8. fis16~ | % 72 (BM7)
  fis4 d4 d4 d4 | % 73 (EM7)
  r4 e4 e4 e4 | % 74 (A7)
  e8. e16~ e4 fis8. fis16~ | % 75 (D)
  fis4 d4 d4 d4 | % 76 (BM7)
  r4 e4 e4 e4 | % 77 (EM7)
  e8. e16~ e4 fis8. fis16~ | % 78 (EM7/A)
  fis4 d4 d4 d4 | % 79 (D)
  r4 e4 e4 e4 | % 80 (BM7)
  e8. e16~ e4 fis8. fis16~ | % 81 (EM7)
  fis4 d4 d4 d4 | % 82 (EM7/A)
  r4 e4 e4 e4 | % 83 (D)
  e8. e16~ e4 fis8. fis16~ | % 84 (BM7)
  fis4 d4 d4 d4 | % 85 (EM7)
  r4 e4 e4 e4 | % 86 (EM7/A)
  e8. e16~ e4 fis8. fis16~ | % 87 (D)
  fis4 d4 d4 d4 | % 88 (BM7)
  r4 e4 e4 e4 | % 89 (EM7)
  e8. e16~ e4 fis8. fis16~ | % 90 (A7)
  fis4 d4 d4 d4 | % 91 (D)
  r4 e4 e4 e4 | % 92 (BM7)
  e8. e16~ e4 fis8. fis16~ | % 93 (EM7)
  fis4 d4 d4 d4 | % 94 (A7)
  r4 e4 e4 e4 | % 95 (D)
  e8. e16~ e4 fis8. fis16~ | % 96 (BM7)
  fis4 d4 d4 d4 | % 97 (EM7)
  r4 e4 e4 e4 | % 98 (F#m)
  e8. e16~ e4 fis8. fis16~ | % 99 (G)
  fis4 d4 d4 d4 | % 100 (A)
  r4 e4 e4 e4 | % 101 (EM7)
  e8. e16~ e4 fis8. fis16~ | % 102 (EM7/A)
  d2. d4 | % 103 (D)
}

% Combining score elements
\score {
  <<
    \chordsPart
    \new Staff {
      \guitarPart
    }
  >>
  \layout {}
  \midi {
    \tempo 4 = 112
  }
}

% Adding header information
\header {
  title = "Come and Get Your Love"
  composer = "Redbone"
  arranger = "Lolly Vegas"
  instrument = "Guitar"
}