\version "2.22.0"

chorpartiturMaennerBenedictusATreLotti = {
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
					\transpose c c \tenorNotenBenedictusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "G_8"
					\tenorNotenBenedictusATreLotti
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
					\transpose c c \baritonNotenBenedictusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\baritonNotenBenedictusATreLotti
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
					\transpose c c \bassNotenBenedictusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\bassNotenBenedictusATreLotti
				}
			}
			
		>>
	>>
>>
}
chorpartiturGemischtBenedictusATreLotti = {
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
					\transpose c g \sopranNotenBenedictusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\sopranNotenBenedictusATreLotti
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
					\transpose c g \altNotenBenedictusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\altNotenBenedictusATreLotti
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
					\transpose c g \bassNotenBenedictusATreLotti
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\bassNotenBenedictusATreLotti
				}
			}
			
		>>
	>>
>>
}

scoreBenedictusATreLotti = {	<<\chorpartiturMaennerBenedictusATreLotti
\chorpartiturGemischtBenedictusATreLotti
	>>
}