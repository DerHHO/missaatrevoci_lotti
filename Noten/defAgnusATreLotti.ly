\version "2.22.0"

chorpartiturMaennerAgnusATreLotti = {
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
					\transpose c c \tenorNotenAgnusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "G_8"
					\tenorNotenAgnusATreLotti
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
					\transpose c c \baritonNotenAgnusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\baritonNotenAgnusATreLotti
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
					\transpose c c \bassNotenAgnusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\bassNotenAgnusATreLotti
				}
			}
			
		>>
	>>
>>
}
chorpartiturGemischtAgnusATreLotti = {
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
					\transpose c g \sopranNotenAgnusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\sopranNotenAgnusATreLotti
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
					\transpose c g \altNotenAgnusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\altNotenAgnusATreLotti
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
					\transpose c g \bassNotenAgnusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\bassNotenAgnusATreLotti
				}
			}
			
		>>
	>>
>>
}

scoreAgnusATreLotti = {	<<\chorpartiturMaennerAgnusATreLotti
\chorpartiturGemischtAgnusATreLotti
	>>
}