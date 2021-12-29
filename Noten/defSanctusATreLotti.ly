\version "2.22.0"

chorpartiturMaennerSanctusATreLotti = {
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
					\transpose c c \tenorNotenSanctusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "G_8"
					\tenorNotenSanctusATreLotti
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
					\transpose c c \baritonNotenSanctusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\baritonNotenSanctusATreLotti
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
					\transpose c c \bassNotenSanctusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\bassNotenSanctusATreLotti
				}
			}
			
		>>
	>>
>>
}
chorpartiturGemischtSanctusATreLotti = {
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
					\transpose c g \sopranNotenSanctusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\sopranNotenSanctusATreLotti
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
					\transpose c g \altNotenSanctusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\altNotenSanctusATreLotti
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
					\transpose c g \bassNotenSanctusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\bassNotenSanctusATreLotti
				}
			}
			
		>>
	>>
>>
}

scoreSanctusATreLotti = {	<<\chorpartiturMaennerSanctusATreLotti
\chorpartiturGemischtSanctusATreLotti
	>>
}