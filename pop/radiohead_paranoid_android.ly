#(define (tie::tab-clear-tied-fret-numbers grob)
   (let* ((tied-fret-nr (ly:spanner-bound grob RIGHT)))
      (ly:grob-set-property! tied-fret-nr 'transparent #t)))

\version "2.10.5"
\paper {
   indent = #0
   printallheaders = ##t
   print-all-headers = ##t
   ragged-right = ##f
   ragged-bottom = ##t
}
\layout {
   \context { \Score
      \override MetronomeMark #'padding = #'5
   }
   \context { \Staff
      \override TimeSignature #'style = #'numbered
      \override StringNumber #'transparent = ##t
   }
   \context { \TabStaff
      \override TimeSignature #'style = #'numbered
      \override Stem #'transparent = ##t
      \override Beam #'transparent = ##t
      \override Tie  #'after-line-breaking = #tie::tab-clear-tied-fret-numbers
   }
   \context { \TabVoice
      \override Tie #'stencil = ##f
   }
   \context { \StaffGroup
      \consists "Instrument_name_engraver"
   }
}
deadNote = #(define-music-function (parser location note) (ly:music?)
   (set! (ly:music-property note 'tweaks)
      (acons 'stencil ly:note-head::print
         (acons 'glyph-name "2cross"
            (acons 'style 'special
               (ly:music-property note 'tweaks)))))
   note)

palmMute = #(define-music-function (parser location note) (ly:music?)
   (set! (ly:music-property note 'tweaks)
      (acons 'style 'do (ly:music-property note 'tweaks)))
   note)

TrackAVoiceAMusic = #(define-music-function (parser location inTab) (boolean?)
#{
   \tempo 4=82
   \clef #`(if $inTab "tab" "bass_8")
   \key c \major
   \time 4/4
   \oneVoice
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r2. r8 <a,\2>16 <ais,\2>16 
   <g,\3>8 <g,\3>16 <g,~\3>16 <g,\3>8. <g,~\3>16 <g,\3>16 <g,\3>8 <g,\3>16 <g,\3>16 <g,\3>16 <a,\2>16 <ais,\2>16 
   <f,\3>8 <f,\3>16 <f,~\3>16 <f,\3>8. <f,~\3>16 <f,\3>16 <f,\3>8 <f,\3>16 <f,\3>16 <f,\3>16 <a,\2>16 <ais,\2>16 
   <e,\3>8 <e,\3>16 <e,~\3>16 <e,\3>8. <e,~\3>16 <e,\3>16 <e,\3>8 <e,,\4>16 <ais,\2>16 <a,\2>16 <f,\3>16 <fis,\3>16 
   <g,\3>8 <g,\3>16 <g,~\3>16 <g,\3>8. <g,~\3>16 <g,\3>16 <g,\3>8 <g,\3>16 <g,\3>16 <g,\3>16 <a,\2>16 <ais,\2>16 
   <f,\3>8 <f,\3>16 <f,~\3>16 <f,\3>8. <f,~\3>16 <f,\3>16 <f,\3>8 <f,\3>16 <f,\3>16 <f,\3>16 <a,\2>16 <ais,\2>16 
   <e,\3>8 <e,\3>16 <e,~\3>16 <e,\3>8. <e,~\3>16 <e,\3>16 <e,\3>8 <e,\3>16 <ais,\2>16 <a,\2>16 <e,\3>8 
   <e,~\3>8 <e,~\3 e,,\4 >16 <e,\3 e,,~\4 >16 <e,~\3 e,,\4 >8. <e,\3 e,,~\4 >16 <e,,\4>16 <e,,\4>8 <e,,\4>16 <a,,\4>8 <ais,,\4>8\staccato 
   <c,\4>2 <ais,,\4>4 <c,\4>4 
   <f,,\4>8\staccato r16 <f,,~\4>16 <f,,\4>8 <g,,\4>16 <gis,,\4>16 <a,,\4>4\staccato <ais,,\4>4 
   <g,,\4>8. <g,,~\4>16 <g,,\4>8 <g,,\4>16 <gis,,\4>16 <a,,\4>8 <a,,\4>8 <ais,,\4>8 <ais,,\4>8 
   <e,~\3>8 <e,~\3 e,,\4 >16 <e,\3 e,,~\4 >16 <e,,\4>16 <e,,\4>16 <e,,~\4>8 <e,,\4>16 <e,,\4>16 <e,,\4>8 <e,,\4>8 <e,,\4>8 
   <g,,\4>8. <g,,~\4>16 <g,,\4>8 <g,,\4>16 <gis,,\4>16 <a,,\4>8 <a,,\4>8 <ais,,\4>8 <ais,,\4>8 
   <e,~\3>8 <e,~\3 e,,\4 >16 <e,\3 e,,~\4 >16 <e,,\4>16 <e,,\4>16 <e,,~\4>8 <e,,\4>16 <e,,\4>16 <e,,\4>8 <d,\4>8 <cis,\4>8 
   <c,\4>8. <c,~\4>16 <c,\4>8 <c,\4>8 <ais,,\4>4 <c,\4>4 
   <f,,\4>8. <f,,~\4>16 <f,,\4>8 <g,,\4>16 <gis,,\4>16 <a,,\4>8 <a,,\4>8 <ais,,\4>8 <ais,,\4>8 
   <g,,\4>8 <g,,\4>16 <g,,~\4>16 <g,,\4>8 <g,,\4>16 <gis,,\4>16 <a,,\4>8 <a,,\4>8 <ais,,\4>8 <ais,,\4>8 
   <e,~\3>8 <e,~\3 e,,\4 >16 <e,\3 e,,~\4 >16 <e,,\4>16 <e,,\4>16 <e,,~\4>8 <e,,\4>16 <e,,\4>16 <e,,\4>8 <e,,\4>8 <a,\2>16 <ais,\2>16 
   <g,\3>8 <g,\3>16 <g,~\3>16 <g,\3>8. <g,~\3>16 <g,\3>16 <g,\3>8 <g,\3>16 <g,\3>16 <g,\3>16 <a,\2>16 <ais,\2>16 
   <f,\3>8 <f,\3>16 <f,~\3>16 <f,\3>8. <f,~\3>16 <f,\3>16 <f,\3>8 <f,\3>16 <f,\3>16 <f,\3>16 <a,\2>16 <ais,\2>16 
   <e,\3>8 <e,\3>16 <e,~\3>16 <e,\3>8. <e,~\3>16 <e,\3>16 <e,\3>8 <e,,\4>16 <ais,\2>16 <a,\2>16 <f,\3>16 <fis,\3>16 
   <g,\3>8 <g,\3>16 <g,~\3>16 <g,\3>8. <g,~\3>16 <g,\3>16 <g,\3>8 <g,\3>16 <g,\3>16 <g,\3>16 <a,\2>16 <ais,\2>16 
   <f,\3>8 <f,\3>16 <f,~\3>16 <f,\3>8. <f,~\3>16 <f,\3>16 <f,\3>8 <f,\3>16 <f,\3>16 <f,\3>16 <a,\2>16 <ais,\2>16 
   <e,\3>8 <e,\3>16 <e,~\3>16 <e,\3>8. <e,~\3>16 <e,\3>16 <e,\3>8 <e,\3>16 <a,\2>16 <ais,\2>16 <e,\3>8 
   <e,,\4>8 <e,,\4>16 <e,,~\4>16 <e,,\4>8. <e,,~\4>16 <e,,\4>16 <e,,\4>8 <e,,\4>16 <e,,\4>8 <e,\4>8 
   <a,,\4>8 <a,,\4>16 <a,,\4>16 <c,\3>16 <a,,\4>16 r16 <gis,,~\4>16 <gis,,\4>16 <gis,,\4>8 <gis,,\4>16 <c,\3>8 <d,\3>8 
   <a,,\4>8 <a,,\4>16 <a,,\4>16 <c,\3>16 <a,,\4>16 r16 <gis,,~\4>16 <gis,,\4>16 <gis,,\4>8 <gis,,\4>16 <c,\3>8 <d,\3>8 
   <a,,\4>8 <a,,\4>16 <a,,\4>16 <c,\3>16 <a,,\4>16 r16 <gis,,~\4>16 <gis,,\4>16 <gis,,\4>8 <gis,,\4>16 <c,\3>8 <d,\3>8 
   <a,,\4>8 <a,,\4>16 <a,,\4>16 <c,\3>16 <a,,\4>16 r16 <gis,,~\4>16 <gis,,\4>16 <gis,,\4>8 <gis,,\4>16 <e\1>16 <f\1>16 <ais,\2>16 <b,\2>16 
   \time 7/8
   <c\2>8 <c\2>8 <f,\3>16 <fis,\3>16 <g,\3>16 <gis,\3>8 <gis,\3>16 <dis\1>16 <e\1>16 <f\1>16 <ais,\2>16 
   <c\2>8 <c\2>16 <\deadNote fis,\3>16 <f,\3>16 <fis,\3>16 <g,\3>16 <gis,\3>16 <f\1>16 <e\1>16 <dis\1>16 <d\1>16 <ais,\2>16 <b,\2>16 
   <c\2>8 <c\2>16 <\deadNote fis,\3>16 <f,\3>16 <fis,\3>16 <g,\3>16 <gis,\3>8\staccato <gis,\3>16 <dis\1>8 <f\1>8 
   \time 4/4
   <c\2>8 <c\2>16 <\deadNote fis,\3>16 <f,\3>16 <fis,\3>16 <g,\3>16 <gis,\3>16 <c\2>16 <b,\2>16 r16 <ais,~\2>16 <ais,\2>8 <f,\4>8 
   <a,,\4>8\staccato r8 r2. 
   <a,,\4>8 <a,,\4>16 <a,,\4>16 <c,\3>16 <a,,\4>16 r16 <gis,,~\4>16 <gis,,\4>16 <gis,,\4>16 <gis,,\4>16 <gis,,\4>16 <c,\3>8\staccato <d,\3>8 
   <a,,\4>4 r2 <c,\3>16 <cis,\3>16 <g,,\4>16 <gis,,\4>16 
   <a,,\4>8 <a,,\4>16 <a,,\4>16 <c,\3>16 <a,,\4>16 r16 <gis,,~\4>16 <gis,,\4>16 <gis,,\4>16 <gis,,\4>16 <gis,,\4>16 <c,\3>8 <d,\3>8 
   \time 7/8
   <c\2>8 <c\2>16 <\deadNote fis,\3>16 <f,\3>16 <fis,\3>16 <g,\3>16 <gis,\3>8 <dis\1>16 <e\1>16 <f\1>16 <ais,\2>16 <b,\2>16 
   <c\2>8 <c\2>16 <\deadNote fis,\3>16 <f,\3>16 <fis,\3>16 <g,\3>16 <gis,\3>16 <f\1>16 <e\1>16 <dis\1>16 <d\1>16 <ais,\2>16 <b,\2>16 
   <c\2>8 <c\2>16 <\deadNote fis,\3>16 <f,\3>16 <fis,\3>16 <g,\3>16 <gis,\3>8\staccato <gis,\3>16 <dis\1>8 <f\1>8 
   \time 4/4
   <c\2>8 <c\2>16 <\deadNote fis,\3>16 <f,\3>16 <fis,\3>16 <g,\3>16 <gis,\3>16 <c\2>16 <b,\2>16 r16 <ais,~\2>16 <ais,\2>8 <f,\4>8 
   <a,,\4>8\staccato r8 r2 r8 <e,\4>8 
   <a,,\4>8 <a,,\4>16 <a,,\4>16 <c,\3>16 <d,\3>8 <dis,~\3>16 <dis,\3>16 <dis,\3>8 <dis,\3>16 <d,\3>8 <c,\3>8 
   <a,,\4>8 r8 r2. 
   <a,,\4>8 <a,,\4>16 <a,,\4>16 <c,\3>16 <d,\3>8 <dis,~\3>16 <dis,\3>16 <dis,\3>8 <dis,\3>16 <d,\3>8 <c,\3>8 
   \time 7/8
   <c,\3>8 <c,\3>16 <\deadNote e,,\4>16 <f,,\4>16 <fis,,\4>16 <g,,\4>16 <gis,,\4>8 <gis,,\4>16 <dis,\2>16 <e,\2>16 <f,\2>8 
   <c,\3>8 <c,\3>16 <\deadNote e,,\4>16 <f,,\4>16 <fis,,\4>16 <g,,\4>16 <gis,,\4>8\staccato <gis,,\4>16 <f,\2>16 <e,\2>16 <dis,\2>16 <a,,\3>16 
   <c,\3>8 <c,\3>16 <\deadNote e,,\4>16 <f,,\4>16 <fis,,\4>16 <g,,\4>16 <gis,,\4>8 <gis,,\4>16 <d,\2>8 <f,\2>8 
   \time 4/4
   <c,\3>8 <c,\3>16 <\deadNote f,,\4>16 <fis,,\4>16 <g,,\4>16 <gis,,\4>8\staccato <c,\3>16 <b,,\3>16 r16 <ais,,~\3>16 <ais,,\3>16 <a,,\3>8. 
   <a,,\4>4 r2. 
   <a,,\4>8 <a,,\4>16 <a,,\4>16 <c,\3>16 <d,\3>8 <dis,~\3>16 <dis,\3>16 <dis,\3>8 <dis,\3>16 <d,\3>8 <c,\3>8 
   <a,,\4>4 r2 r16 <e,,\4>16 <c,\4>8 
   <a,,\4>8 <a,,\4>16 <a,,\4>16 <c,\3>16 <d,\3>8 <dis,~\3>16 <dis,\3>16 <dis,\3>8 <dis,\3>16 <d,\3>8 <c,\3>8 
   \time 7/8
   <c,\3>8 <c,\3>16 <\deadNote e,,\4>16 <f,,\4>16 <fis,,\4>16 <g,,\4>16 <gis,,\4>8 <gis,,\4>16 <dis,\2>8 <f,\2>8 
   <c,\3>8 <c,\3>16 <\deadNote e,,\4>16 <f,,\4>16 <fis,,\4>16 <g,,\4>16 <gis,,\4>8 <gis,,\4>16 <f,\2>16 <e,\2>16 <dis,\2>16 <a,,\3>16 
   <c,\3>8 <c,\3>16 <\deadNote e,,\4>16 <f,,\4>16 <fis,,\4>16 <g,,\4>16 <gis,,\4>8 <gis,,\4>16 <ais,,\3>8 <d,\2>8 
   \time 4/4
   <c,\3>8 <c,\3>16 <\deadNote f,,\4>16 <fis,,\4>16 <g,,\4>16 <gis,,\4>8 <c\2>16 <b,\2>16 r16 <ais,~\2>16 <ais,\2>16 <a,\2>8. 
   <f,,\4>8 r8 r2. 
   r1 
   \tempo 4=62
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r1 
   \tempo 4=82
   r2. r8 <e,\4>8 
   <a,,\4>8 <a,,\4>16 <a,,\4>16 <c,\3>16 <a,,\4>16 r16 <gis,,~\4>16 <gis,,\4>16 <gis,,\4>16 <gis,,\4>16 <gis,,\4>16 <c,\3>8\staccato <d,\3>8 
   <a,,\4>8 r8 r2 r16 <e,,\4>16 <g,,\4>16 <gis,,\4>16 
   <a,,\4>8 <a,,\4>16 <a,,\4>16 <c,\3>16 <a,,\4>16 r16 <gis,,~\4>16 <gis,,\4>16 <gis,,\4>8 <gis,,\4>16 <c,\3>16 <d,\3>16 <ais,,\3>16 <b,,\3>16 
   \time 7/8
   <c,\3>8 <c,\3>16 <c,\3>16 <f,,\4>16 <fis,,\4>16 <g,,\4>16 <gis,,\4>8 <gis,,\4>16 <ais,,\3>8 <dis,\2>8 
   <c,\3>8 <c,\3>16 <c,\3>16 <f,,\4>16 <fis,,\4>16 <g,,\4>16 <gis,,\4>8 <f,\2>16 <e,\2>16 <dis,\2>16 <ais,,\3>16 <b,,\3>16 
   <c,\3>8 <c,\3>16 <e,,\4>16 <f,,\4>16 <fis,,\4>16 <g,,\4>16 <gis,,\4>8 <gis,,\4>16 <dis,\2>16 <e,\2>16 <f,\2>16 <ais,,\3>16 
   \time 4/4
   <c,\3>8 <c,\3>16 <c,\3>16 <f,,\4>16 <fis,,\4>16 <g,,\4>16 <gis,,\4>16 <c,\3>16 <b,,\3>16 r16 <ais,,~\3>16 <ais,,\3>16 <a,,\3>16 <e,\3>8 
   <a,,\4>4 r2 r8 <e,\4>8 
   <a,,\4>8 <a,,\4>16 <a,,\4>16 <c,\3>16 <d,\3>8\staccato <dis,~\3>16 <dis,\3>16 <dis,\3>8 <dis,\3>16 <d,\3>16 <c,\3>16 <a,,\4>8 
   <a,,\4>4 r4 r16 <c,\3>16 r16 <c,\3>16 <cis,\3>16 <d,\3>16 <g,,\4>16 <gis,,\4>16 
   <a,,\4>8 <a,,\4>16 <a,,\4>16 <c,\3>16 <d,\3>8\staccato <dis,~\3>16 <dis,\3>16 <dis,\3>16 <dis,\3>16 <dis,\3>16 <d,\3>16 <c,\3>16 <a,,\4>8 
   \time 7/8
   <c,\3>8 <c,\3>16 <c,\3>16 <f,,\4>16 <fis,,\4>16 <g,,\4>16 <gis,,\4>8 <gis,,\4>16 <dis,\2>8 <f,\2>8 
   <c,\3>8 <c,\3>16 <c,\3>16 <f,,\4>16 <fis,,\4>16 <g,,\4>16 <gis,,\4>16 <f,\2>16 <e,\2>16 <dis,\2>16 <d,\2>16 <ais,,\3>16 <b,,\3>16 
   <c,\3>8 <c,\3>16 <e,,\4>16 <f,,\4>16 <fis,,\4>16 <g,,\4>16 <gis,,\4>8 <gis,,\4>16 <dis,\2>16 <e,\2>16 <f,\2>16 <ais,,\3>16 
   <c,\3>8 <c,\3>16 <c,\3>16 <f,,\4>16 <fis,,\4>16 <g,,\4>16 <gis,,\4>16 <c,\3>16 <b,,\3>16 r16 <ais,,\3>16 <ais,,\3>16 <a,,\3>16 
   <e,\3>8 r4 r2 
   \bar "|."
   \pageBreak
#})
TrackAVoiceBMusic = #(define-music-function (parser location inTab) (boolean?)
#{
#})
TrackALyrics = \lyricmode {
   \set ignoreMelismata = ##t
   
   \unset ignoreMelismata
}
TrackAStaff = \new Staff <<
   \context Voice = "TrackAVoiceAMusic" {
      \TrackAVoiceAMusic ##f
   }
   \context Voice = "TrackAVoiceBMusic" {
      \TrackAVoiceBMusic ##f
   }
>>
TrackATabStaff = \new TabStaff \with { stringTunings = #'( -17 -22 -27 -32 ) } <<
   \context TabVoice = "TrackAVoiceAMusic" {
      \removeWithTag #'chords
      \removeWithTag #'texts
      \TrackAVoiceAMusic ##t
   }
   \context TabVoice = "TrackAVoiceBMusic" {
      \removeWithTag #'chords
      \removeWithTag #'texts
      \TrackAVoiceBMusic ##t
   }
>>
TrackAStaffGroup = \new StaffGroup <<
   \TrackAStaff
   \TrackATabStaff
>>
\score {
   \TrackAStaffGroup
   \header {
      title = "Radiohead - Paranoid Android" 
      composer = "" 
      instrument = "Bass" 
   }
}
