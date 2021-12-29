\version "2.22.0"

chorpartiturMaennerCredoATreLotti = {
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
					\transpose c c \tenorNotenCredoATreLotti
				}
				\tag #'klingendepartitur {
					\clef "G_8"
					\tenorNotenCredoATreLotti
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
					\transpose c c \baritonNotenCredoATreLotti
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\baritonNotenCredoATreLotti
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
					\transpose c c \bassNotenCredoATreLotti
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\bassNotenCredoATreLotti
				}
			}
			
		>>
	>>
>>
}
chorpartiturGemischtCredoATreLotti = {
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
					\transpose c g \sopranNotenCredoATreLotti
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\sopranNotenCredoATreLotti
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
					\transpose c g \altNotenCredoATreLotti
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\altNotenCredoATreLotti
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
					\transpose c g \bassNotenCredoATreLotti
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\bassNotenCredoATreLotti
				}
			}
			
		>>
	>>
>>
}

scoreCredoATreLotti = {	<<\chorpartiturMaennerCredoATreLotti
\chorpartiturGemischtCredoATreLotti
	>>
}