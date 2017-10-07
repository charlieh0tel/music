% LilyBin

% Love Train -The O'Jays

\paper { 
  left-margin = 0.75\in
  right-margin = 0.75\in
}

symbols = {
		c,8-> \mf c8 c8 c8 c8 c8 c8 cis8
		d8 d8 d8 d8 d8 d8 dis8 e8
		f8 f8 f8 f8 f8 f8 f8 g8
		(g8) \< g8 g8 g8 g8 g8 a8 g8 \!
		\bar "||"
		\break
		
		%A/5
		\mark \markup { \bold {[A]} \italic {(Vocals)} }
		c,4-> \f c4 c8 c8 cis8 d8->
		(d4) d4-. d8 d8 d8-. e
		f4-> f4-. f8 f8 f8-. fis8
		g8 g8 g8 g8 g8 g8 g8 g8
		\break
		
		%9
		c,4-> c4 c8 e8-> d8-. e8->
		d4 d4-. d8 d8 d8-. e8
		f4-> f4-. f8 f8 fis8 fis8
		g8-> g8 g8 g8 g8 f8 e8 d8
		\break
		
		%B/13
		\mark \markup { \bold {[B]} }
		\repeat volta 2 {
		%\bar "[|:"
		g,4-> \mf g4 g8 g8-. r8 g8
		g4 g4 g8 b8 d8 g8
		f4-. f4-. f8 f8 r8 f8
		f4-. f4 f8 f8 fis8 g8
		\break
		
		%17
		g,4 g4-. g8 g8-. r8 g8
		g4 g4-. g8 b8 d8 g8
		f4 f4 f8 f8 r8 f8
		f8 f8 f8-. e8 d8 d8 c8 b8
		\bar "||"
		\break
		
		%C/21
		\mark \markup { \bold {[C]} }
		g4 g4-. g8 g8-. r8 g8
		g4 g4 g8 g8-. b8 b8-.
		a4 a4 a8 a8-. r8 a8
		a4 a4 a8-. a8-. c8 cis8-.
		\break
		
		%25
		d4-> \cresc d4 d8 d8 d8-. d8
		d4-> d4 d8 e8 f8 fis8
		g8-> g8 g8 g8 f8-> f8 f8 f8
		e8-> e8 e8 e8 d8-> d8 d8 d8
		\bar "||"
		\break
		
		%D/29
		\mark \markup { \bold {[D]} }
		c4-> \f c c8 c8 c8-. cis8-.
		d4-> d4-. d8 d8 d8-. e8
		f4-> f4 f4 f8-. fis8
		g8 g8 g8 g8 g8 g8 f8 e8
		\break
		
		%33
		c4-> c4 c8 c8 c8-. cis8
		d4-> \tuplet 3/2 { d'8 e8 eis8 }
		     \tuplet 3/2 { fis8 (fis8 d,8) } fis'8-. d,8
		d4-> d4-. d8 d8 f8-. fis8
		\break
		
		}
		%36 ending 1
		\alternative {
		  { g8-> g8 g8 g8 g8 e8 d8-. b8 
		    %\bar ":|]" 
	      }
	      { g'4-> g8 g8 g8 g8 f8 e8
		    \bar "||" 
	      }
	    }
		\break
		
		%E/38
		\mark \markup { \bold {[E]} }		
		ees4-> ees4 ees8 ees8 r8 ees8
		ees4 ees8 ees8 ees8 ees8 ees8 ees8
		c4 c8 c8 e8 e8 e8 e8
		f8 f8 f8 f8 fis8 fis8 g8 g8
		\break
		
		%42
		ees4-> ees4 ees8 ees8 r8 ees8
		ees4 ees4 ees8 ees8 f8 fis8
		g8-> g8-> g8-> g8-> g8-> g8-> g8-> g8-> 
		g8-> g8-> g8-> g8-> g8-> g8-> a,-> b->
		\break
		
		%F/46
		\mark \markup { \bold {[F]} }
		\repeat volta 2 {
		%\bar "[|:"
		c4-> \f c4 c8 c8 c8-. cis8-.
		d4-> d4-. d8 d8 d8-. e8
		f4-> f4 f4 f8-. fis8
		\break
		}
		
		%49 ending 1
		\alternative {
		  { g8 g8 g8 g8 g8 g8 g8 g8
		    %\bar ":|]" 
		  }
		% repeat
		% ending 2
		  { g8 g8 g8 g8 g8 g8 g8 g8 
		  }
		}
		\break
		
		%G/51
		\mark \markup { \bold {[G]} }
		\repeat volta 4 {
		%\bar "[|:"
		% Open vamp 'till end
		c,4-> c4 c8 c8 c8-. cis8-.
		d4-> d4-. d8 d8 d8-. e8
		f4-> f4 f4 f8-. fis8-.
		\break
		}
		%54
		\alternative {
		  { g8-> g8-> f8-> f8-> e8-> e8-> d8-> d8-> 
		    %\bar ":|]"
		  }
		  { g8-> \< g8-> r8 g8->
		    g4 \shortfermata g4 \shortfermata \!
		    r4  c,4-^-. \ff r2 
		    %\bar "|." 
		  }
		}
		
}

\score{
  \header {
    piece = \markup { \fontsize #4 \bold "Love Train" }
    opus = \markup { \italic "The O'Jays" }
  }
  %\unfoldRepeats {
	<<
    %\new RhythmicStaff
	%  { \relative { \symbols }}
    \new Staff
	  { \clef "bass_8" \relative { \symbols }}
	\new TabStaff
	  \with { stringTunings = #bass-tuning } 
	  { 
	    \set TabStaff.minimumFret = #1
        \set TabStaff.restrainOpenStrings = ##t
	    \relative { \symbols }
	  }
    >>
	%}
	\layout {
      \context {
        \Score
          proportionalNotationDuration =
		    #(ly:make-moment 1/8)
		  %voltaSpannerDuration = 
		  %  #(ly:make-moment 3/4)
      }
    }
	
	\midi{}
}
