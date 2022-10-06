%%%%
\version "2.19.83"

clickTrack = #(define-music-function (beat meter)
  ((ly:duration? #f) fraction?)
  (let* ((beat (if (ly:duration? beat) beat
                 (make-duration-of-length
                   (ly:make-moment (/ 1 (cdr meter))))))
         (meter-moment (ly:make-moment (/ (car meter) (cdr meter))))
         (beat-moment (ly:duration-length beat))
         (beat-count (floor (ly:moment-main
           (ly:moment-div meter-moment beat-moment))))
         (final-moment (ly:moment-mod meter-moment beat-moment))
         (final-duration (make-duration-of-length final-moment))
         (needs-final? (ly:moment<? (ly:make-moment 0) final-moment)))
    (make-sequential-music
      (map (lambda (n)
        (cond
          ((eqv? 0 n) #{ \drummode { wbh $beat \ff } #})
          ((eqv? beat-count n) #{ \drummode { r $final-duration } #})
          (else #{ \drummode { wbl $beat \pp } #})))
        (iota (if needs-final? (1+ beat-count) beat-count))))))

clickTrackDuring = #(define-music-function (beat meter music)
  ((ly:duration? #f) fraction? ly:music?)
  (let* ((music-length (ly:music-length music))
         (meter-moment (ly:make-moment (/ (car meter) (cdr meter))))
         (repeat-count (floor (ly:moment-main
           (ly:moment-div music-length meter-moment)))))
  (if (ly:duration? beat)
    #{ \repeat unfold $repeat-count \clickTrack $beat $meter #}
   #{ \repeat unfold $repeat-count \clickTrack $meter #})))
				  