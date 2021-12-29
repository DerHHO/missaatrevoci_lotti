\version "2.22.0"

chorpartiturMaennerGloriaATreLotti = {
	\new ChoirStaff <<
			<<

		\new Staff \with {
			instrumentName = "Tenor"
			shortInstrumentName = "T."
			midiInstrument = "acoustic grand"
			
		}
			<<
			\new Voice = "vten" {
				\tag #'transponierendepartitur {
					\clef "G_8"
					\transpose c c \tenorNotenGloriaATreLotti
				}
				\tag #'klingendepartitur {
					\clef "G_8"
					\tenorNotenGloriaATreLotti
				}
			}
			
		>>


		\new Staff \with {
			instrumentName = "Bariton"
			shortInstrumentName = "Bar."
			midiInstrument = "acoustic grand"
			
		}
			<<
			\new Voice = "vbar" {
				\tag #'transponierendepartitur {
					\clef "treble"
					\transpose c c \baritonNotenGloriaATreLotti
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\baritonNotenGloriaATreLotti
				}
			}
			
		>>


		\new Staff \with {
			instrumentName = "Bass"
			shortInstrumentName = "B."
			midiInstrument = "acoustic grand"
			
		}
			<<
			\new Voice = "vbass" {
				\tag #'transponierendepartitur {
					\clef "bass"
					\transpose c c \bassNotenGloriaATreLotti
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\bassNotenGloriaATreLotti
				}
			}
			
		>>
	>>
>>
}
chorpartiturGemischtGloriaATreLotti = {
	\new ChoirStaff <<
			<<

		\new Staff \with {
			instrumentName = "Sopran"
			shortInstrumentName = "S"
			midiInstrument = "acoustic grand"
			
		}
			<<
			\new Voice = "vsop" {
				\tag #'transponierendepartitur {
					\clef "treble"
					\transpose c g \sopranNotenGloriaATreLotti
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\sopranNotenGloriaATreLotti
				}
			}
			
		>>


		\new Staff \with {
			instrumentName = "Alt"
			shortInstrumentName = "A"
			midiInstrument = "acoustic grand"
			
		}
			<<
			\new Voice = "valt" {
				\tag #'transponierendepartitur {
					\clef "treble"
					\transpose c g \altNotenGloriaATreLotti
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\altNotenGloriaATreLotti
				}
			}
			
		>>


		\new Staff \with {
			instrumentName = "Bass"
			shortInstrumentName = "B"
			midiInstrument = "acoustic grand"
			
		}
			<<
			\new Voice = "vbass" {
				\tag #'transponierendepartitur {
					\clef "bass"
					\transpose c g \bassNotenGloriaATreLotti
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\bassNotenGloriaATreLotti
				}
			}
			
		>>
	>>
>>
}

scoreGloriaATreLotti = {	<<\chorpartiturMaennerGloriaATreLotti
\chorpartiturGemischtGloriaATreLotti
	>>
}