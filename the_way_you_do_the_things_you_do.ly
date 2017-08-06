% LilyBin

% The Way You Do The Things You Do - The Temptations

\version "2.16.2"

\paper {
  left-margin = 0.75\in
  right-margin = 0.75\in
}

symbols = \relative c, {
  \clef "bass_8"
  \key ees \major
  \time 4/4
  \tempo 4 = 130

  %% 1
  r1 |
  ees2-> \f ees8-> bes'8 bes8-> bes8 |
  ees,4.-> \< es8-> ees8 bes'8 bes8-> bes8 \! |
  ees,4-^-. r4 r4 \times 2/3 { bes8-> c8 d8 } |
  \break

  %% 5
  \mark \markup { \bold {[A]} }
  ees4.-> \mf ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. ees8~ ees8 bes'8 \times 2/3 { bes,8 c8 d8 } |
  ees4. ees8 ees8 bes'8 bes8 bes,8 |
  \break

  %% 9
  ees4. ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. ees8~ ees8 bes'4-> bes8-> |
  \break

  %% 13
  \mark \markup { \bold {[B]} }
  aes4.-> aes8 aes8 aes8 aes8 aes8 |
  aes4. aes8~ aes8 c,8 \times 2/3 { c8 c8 d8 } |
  ees4. ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. ees8~ ees8 bes'8 bes8 bes8 |
  \break

  %% 17
  ees,4. ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. \< ees8~ ees8 bes'8 \times 2/3 { bes8 bes8 bes8 \! } |
  ees,4-^-. \f bes'4->~ bes4 bes4-> |
  \break

  %% 21
  \mark \markup { \bold {[C]} }
  bes8-> bes8 bes8 bes8->~ bes8 bes8 bes8-> a8 |
  aes8-> aes8 aes8 aes8->~ aes8 ees8 aes8-> a8 |
  bes8-> \< bes8 bes8 bes8->~ bes8 bes8 bes8-> a8  \! |
  aes4->-. r4 r8 bes,8 \times 2/3 { bes8-> c8 d8 } |
  \break

  %% 25
  \mark \markup { \bold {[D]} }
  ees4.-> ees8->~ ees8 bes'8 bes8-> bes8 |
  ees,4.-> \< ees8->~ ees8 bes'8 bes8-> bes8 \! |
  aes4-^-. r4 r8 bes,8-> \times 2/3 { bes8-> c8 d8 } |
  \break

  %% 28
  \mark \markup { \bold {[E]} }
  ees4.-> \mf ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. ees8 ees8 bes'8 bes8 bes,8 |
  \break

  %% 32
  ees4. ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. \< ees8~ ees8 bes'8->~ \times 2/3 { bes8 ees,8-> bes'8 \! } |
  \break

  %% 36
  \mark \markup { \bold {[F]} }
  aes4.-> aes8 aes8 aes8 aes8 aes8 |
  aes8 aes8 aes8 aes8 aes8 aes8 \times 2/3 { aes8 aes8 aes8 } |
  ees4. ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. ees8~ ees8 bes'8 bes8 bes8 |
  \break

  %% 40
  ees,4. ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. ees8~ ees8 bes'8 bes8 bes8 |
  ees,4. \< ees8~ ees8 bes'8 \times 2/3 { bes8 bes8 bes8 } |
  ees,4-^-. \f bes'4->~ bes4 bes4-> |
  \break

  %% 44
  \mark \markup { \bold {[G]} }
  bes8-> bes8 bes8 bes8->~ bes8 bes8 bes8-> a8 |
  aes8-> aes8 aes8 aes8->~ aes8 ees8 aes8-> a8 |
  bes8-> \< bes8 bes8 bes8->~ bes8 bes8 bes8-> a8  \! |
  aes4->-. r4 r8 bes,8 \times 2/3 { bes8-> c8 d8 } |
  \break

  %% 48
  \mark \markup { \bold {[H]} }
  ees4.-> ees8->~ ees8 bes'8 bes8-> bes8 |
  ees,4.-> \< ees8-> ees8 bes'8 bes8-> bes8 \! |
  ees,4-.-^ r4 r2 |
  \break

  %% 51
  \mark \markup { \bold {[I]} Sax Solo}
  \key e \major
  e4.-> e8->~ e8 b'8 b8-> b,8 |
  e4.-> e8->~ e4 b4-> |
  e4.-> e8->~ e8 b'8 b8-> b,8 |
  e4.-> e8->~ e8 e8 e8-> e8 |
  \break

  %% 55
  b4.-> b8->~ b8 b8 \times 2/3 { b8-> b8 b8 } |
  a'4.-> a8->~ a8 a8 a8-> a8 |
  e4.-> \< e8->~ e8 b'8 b,8-> b8 \! |
  e4-^-. r4 r4 \mf \times 2/3 { b8-> cis8 dis8 } |
  \break

  %% 59
  \mark \markup { \bold {[J]} }
  e4.-> e8~ e8 b'8 b8 b,8 |
  e4. e8~ e8 b'8 b8 b8 |
  e,4. e8~ e8 b'8 b8 b,8 |
  e4. e8~ e8 b'8 \times 2/3 { b8 b8 b,8 } |
  \break

  %% 63
  e4. e8~ e8 b'8 \times 2/3 { b8 b8 b,8 } |
  e4. e8~ e8 b'8 b,8 b'8 |
  e,4. \< e8~ e8 b'8 b8 b8 |
  e,4-^-. \f b4~ b4 b4-^-. |
  \break

  %% 67
  \mark \markup { \bold {[K]} }
  b8-> b'8 b8 b,8->~ b8 b'8 \times 2/3 { b8-> b8 bes8 } |
  a4-> a8 a8->~ a8 a8 a8-> ais8 |
  b8-> \< b8 b8 b8 b,8-> b'8 \times 2/3 { b8-> b8 bes8 \! } |
  a4-^-. r4 r2 |
  \break

  %% 71
  \mark \markup { \bold {[L]} }
  \repeat volta 2 {
    e4-> \f e4-> e4-> e4-> |
  } \alternative {
    { e4-> e4-> e4-> e8-> b8 | }
    {
      e4-> e4-> e4-> e8-> b8 |
      e4->-. \mf e,4->~ e2 \fermata
    }
  }
}

these_chords = \chordmode {
  s1 | ees1 | s1 | bes1 |
  ees1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
  aes1 | s1 | ees1 | s1 | s1 | s1 | s1 | ees4 bes2. |
  bes1 | aes1 | bes1 | aes1 |
  ees1 | s1 | s1 |
  ees1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
  aes1 | s1 | ees1 | s1 | s1 | s1 | s1 | ees4 bes2. |
  bes1 | aes1 | bes1 | aes1 |
  ees1 | s1 | s1
  e1 | s1 | s1 | s1 | b1 | a1 | e1 | s2. b4 |
  e1 | s1 | s1 | s1 | s1 | s1 | s1 | s4 b2. |
  b1 | a1 | b1 | a1 |
  e1 |
}

}

\header {
  piece = \markup { \fontsize #4 \bold "The Way You Do The Things You Do" }
  opus = \markup { \italic "The Temptations" }
}

\score {
  <<
    \new ChordNames \these_chords
    \new Staff \symbols
    \new TabStaff
    \with { stringTunings = #bass-tuning }
    {
      %%\set TabStaff.minimumFret = #1
      \set TabStaff.restrainOpenStrings = ##t
      \symbols
    }
  >>
  \layout {
    \context {
      \Score
      %%proportionalNotationDuration = #(ly:make-moment 1/8)
      %%voltaSpannerDuration =
      %%  #(ly:make-moment 3/4)
    }
  }
  \midi {}
}
