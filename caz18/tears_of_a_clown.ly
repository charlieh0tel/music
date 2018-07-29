% LilyBin

% I Want You Back - The Jackson 5

\include "english.ly"

\version "2.18.0"

\paper { 
  left-margin = 1.0\in
  right-margin = 0.5\in
}

my_notes = \relative c {
  \clef "bass_8"
  \key cs \minor
  \time 4/4
  \tempo 4 = 135

  \partial 64*8

%% 5
            cs, 8 -\tenuto  |
            cs, 8 -\tenuto ds, -\tenuto es, -\tenuto fs, 4 -\tenuto gs,, 8 -\tenuto as,, b,, -\tenuto  |
            b,, 8 -\tenuto cs, -\tenuto ds, -\tenuto fs, 4 -\tenuto ds, 8 cs, cs, -\tenuto  |
            cs, 8 -\tenuto ds, -\tenuto es, -\tenuto fs, 4 -\tenuto gs,, 8 -\tenuto as,, -\tenuto b,, -\tenuto  |
            b,, 8 -\tenuto cs, -\tenuto ds, -\tenuto fs, 4 -\tenuto ds, 8 cs, cs, -\tenuto  |
%% 10
            cs, 8 -\tenuto ds, -\tenuto es, -\tenuto fs, 4 -\tenuto gs,, 8 -\tenuto as,, b,, -\tenuto  |
            b,, 8 -\tenuto cs, -\tenuto ds, -\tenuto fs, 4 -\tenuto ds, 8 -\tenuto cs, -\staccato cs, -\tenuto  |
            cs, 8 -\tenuto ds, -\tenuto es, fs, 4 -\tenuto gs,, 8 as,, b,, -\tenuto  |
            b,, 8 -\tenuto cs, -\tenuto ds, -\tenuto fs, 4 -\tenuto ds, 8 cs, -\staccato cs, -\tenuto  |
            cs, 8 -\tenuto ds, -\tenuto es, -\tenuto fs, 4 -\tenuto gs,, 8 -\tenuto as,, -\tenuto b,, -\tenuto  |
%% 15
            b,, 8 -\tenuto cs, -\tenuto ds, -\tenuto fs, 4 -\tenuto ds, 8 cs, -\staccato cs, -\tenuto  |
            cs, 8 -\tenuto ds, -\tenuto es, -\tenuto fs, 4 -\tenuto gs,, 8 -\tenuto as,, b,, -\tenuto  |
            b,, 8 -\tenuto cs, -\tenuto ds, -\tenuto fs, 4 -\tenuto ds, 8 cs, -\staccato cs, -\tenuto  |
            cs, 8 -\tenuto ds, -\tenuto es, -\tenuto fs, 4 -\tenuto gs,, 8 -\tenuto as,, -\tenuto b,, -\tenuto  |
            b,, 8 -\tenuto cs, -\tenuto ds, -\tenuto fs, 4 -\tenuto ds, 8 cs, -\staccato cs, 
            % warning: overlong bar truncated here |
%% 20
            \skip 8 ds, 8 -\tenuto es, fs, 4 -\tenuto gs,, 8 -\tenuto as,, -\tenuto b,, -\tenuto  |
            b,, 8 -\tenuto cs, -\tenuto ds, -\tenuto fs, 4 -\tenuto ds, 8 cs, r  |
            cs, 2 -\tenuto fs, -\tenuto  |
            b,, 4. as,, 4 -\tenuto gs,, 8 -\tenuto fs,, 4 -\tenuto  |
            cs, 2 -\tenuto fs, -\tenuto  |
%% 25
            b,, 4. -\tenuto as,, 4 -\tenuto gs,, 8 fs,, 4 -\tenuto  |
            cs, 2 -\tenuto fs, -\tenuto  |
            b,, 4. -\tenuto as,, 4 -\tenuto gs,, 8 fs,, 4 -\tenuto  |
            cs, 2 -\tenuto fs, -\tenuto  |
            b,, 4. -\tenuto as,, 4 -\tenuto gs,, 8 -\tenuto fs,, 4  |
%% 30
            gs,, 8 gs,, gs,, gs,, gs,, gs,, gs,, gs,,  |
            a,, 8 a,, a,, a,, a,, a,, a,, a,,  |
            as,, 8 as,, as,, as,, as,, as,, gs,, fs,, -\tenuto  |
            fs,, 1 -\tenuto  |
            R1*3  |
            r2 r4 r8 cs, -\tenuto _~  |
            cs, 8 -\tenuto ds, -\tenuto es, -\tenuto fs, 4 -\tenuto gs,, 8 -\tenuto as,, b,, -\tenuto  |
            b,, 8 -\tenuto cs, -\tenuto ds, -\tenuto fs, 4 -\tenuto ds, 8 cs, cs, -\tenuto  |
%% 40
            cs, 8 -\tenuto ds, -\tenuto es, -\tenuto fs, 4 -\tenuto gs,, 8 -\tenuto as,, -\tenuto b,, -\tenuto  |
            b,, 8 -\tenuto cs, -\tenuto ds, -\tenuto fs, 4 -\tenuto ds, 8 cs, cs, -\tenuto  |
            cs, 8 -\tenuto ds, -\tenuto es, -\tenuto fs, 4 -\tenuto gs,, 8 -\tenuto as,, b,, -\tenuto  |
            b,, 8 -\tenuto cs, -\tenuto ds, -\tenuto fs, 4 -\tenuto ds, 8 -\tenuto cs, -\staccato cs, -\tenuto  |
            cs, 8 -\tenuto ds, -\tenuto es, fs, 4 -\tenuto gs,, 8 as,, b,, -\tenuto  |
%% 45
            b,, 8 -\tenuto cs, -\tenuto ds, -\tenuto fs, 4 -\tenuto ds, 8 cs, -\staccato cs, -\tenuto  |
            cs, 8 -\tenuto ds, -\tenuto es, -\tenuto fs, 4 -\tenuto gs,, 8 -\tenuto as,, -\tenuto b,, -\tenuto  |
            b,, 8 -\tenuto cs, -\tenuto ds, -\tenuto fs, 4 -\tenuto ds, 8 cs, -\staccato cs, -\tenuto  |
            cs, 8 -\tenuto ds, -\tenuto es, -\tenuto fs, 4 -\tenuto gs,, 8 -\tenuto as,, b,, -\tenuto  |
            b,, 8 -\tenuto cs, -\tenuto ds, -\tenuto fs, 4 -\tenuto ds, 8 cs, -\staccato cs, -\tenuto  |
%% 50
            cs, 8 -\tenuto ds, -\tenuto es, -\tenuto fs, 4 -\tenuto gs,, 8 -\tenuto as,, -\tenuto b,, -\tenuto  |
            b,, 8 -\tenuto cs, -\tenuto ds, -\tenuto fs, 4 -\tenuto ds, 8 cs, -\staccato cs, 
            % warning: overlong bar truncated here |
            \skip 8 ds, 8 -\tenuto es, fs, 4 -\tenuto gs,, 8 -\tenuto as,, -\tenuto b,, -\tenuto  |
            b,, 8 -\tenuto cs, -\tenuto ds, -\tenuto fs, 4 -\tenuto ds, 8 cs, r  |
            cs, 2 -\tenuto fs, -\tenuto  |
%% 55
            b,, 4. as,, 4 -\tenuto gs,, 8 -\tenuto fs,, 4 -\tenuto  |
            cs, 2 -\tenuto fs, -\tenuto  |
            b,, 4. -\tenuto as,, 4 -\tenuto gs,, 8 fs,, 4 -\tenuto  |
            cs, 2 -\tenuto fs, -\tenuto  |
            b,, 4. -\tenuto as,, 4 -\tenuto gs,, 8 fs,, 4 -\tenuto  |
%% 60
            cs, 2 -\tenuto fs, -\tenuto  |
            b,, 4. -\tenuto as,, 4 -\tenuto gs,, 8 -\tenuto fs,, 4  |
            gs,, 8 gs,, gs,, gs,, gs,, gs,, gs,, gs,,  |
            a,, 8 a,, a,, a,, a,, a,, a,, a,,  |
            as,, 8 as,, as,, as,, as,, as,, gs,, fs,, -\tenuto  |
%% 65
            fs,, 1 -\tenuto  |
            R1*4  |
            \bar "|."
}

\header {
  piece = \markup { \fontsize #4 \bold "I Want You Back" }
  opus = \markup { \italic "The Jackson 5" }
}

my_music = <<
  \new Staff \my_notes
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

