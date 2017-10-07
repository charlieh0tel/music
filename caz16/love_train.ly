% LilyBin
symbols = {
		c,8 c8 c8 c8 c8 c8 c8 cis8
		d8 d8 d8 d8 d8 d8 dis8 e8
		f8 f8 f8 f8 f8 f8 f8 g8
		(g8) g8 g8 g8 g8 g8 a8 g8
		
		%A/5
		\break
		c,4 c4 c8 c8 cis8 d8
		(d4) d4 d8 d8 d8 e
		f4 f4 f8 f8 f8 fis8
		g8 g8 g8 g8 g8 g8 g8 g8
		
		%9
		\break
		c,4 c4 c8 e8 d8 e8
		d4 d4 d8 d8 d8 e8
		f4 f4 f8 f8 fis8 fis8
		g8 g8 g8 g8 g8 f8 e8 d8
		
		%B/13
		\break
		g,4 g4 g8 g8 r8 g8
		g4 g4 g8 b8 d8 g8
		f4 f4 f8 f8 r8 f8
		f4 f4 f8 f8 fis8 g8
		
		%17
		\break
		g,4 g4 g8 g8 r8 g8
		g4 g4 g8 b8 d8 g8
		f4 f4 f8 f8 r8 f8
		f8 f8 f8 e8 d8 d8 c8 b8
		
		%C/21
		\break
		g4 g4 g8 g8 r8 g8
		g4 g4 g8 g8 b8 b8
		a4 a4 a8 a8 r8 a8
		a4 a4 a8 a8 c8 cis8
		
		}

\score{
	<<
    \new Staff { \clef "bass_8" \relative { \symbols }}
    \new TabStaff \with { stringTunings = #bass-tuning } 
	   { \relative { \symbols }}
    >>

	\layout{}
	\midi{}
}
