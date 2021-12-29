\version "2.22.0"

\include "../Noten/dynamicparams.ly"
\include "../Noten/formatangaben.ly"
\include "../Noten/mergerests.ly"
\include "../Noten/optionaltranspose.ly"
\include "../Noten/Bezeichnungen.ly"
\include "../Noten/generaldefinitions.ly"
\include "../Noten/mydrums2.ly"
\include "../Noten/drumdefinitions.ly"

tempTranspose = #(define-music-function (music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #})) 




globalSanctusATreLotti = { 
	\taktstil
 \accidentalStyle modern-voice
 }

vorspielpausenSanctusATreLotti = { 
	
}

tenorNotenSanctusATreLotti = \tempTranspose \relative c' { 
	 \globalSanctusATreLotti
	 
 }

baritonNotenSanctusATreLotti = \tempTranspose \relative c' { 
	 \globalSanctusATreLotti
	 
 }

bassNotenSanctusATreLotti = \tempTranspose \relative c { 
	 \globalSanctusATreLotti
	 
 }

sopranNotenSanctusATreLotti = \tempTranspose \relative c' { 
	 \globalSanctusATreLotti
	 
 }

altNotenSanctusATreLotti = \tempTranspose \relative c' { 
	 \globalSanctusATreLotti
	 
 }

bassNotenSanctusATreLotti = \tempTranspose \relative c { 
	 \globalSanctusATreLotti
	 
 }

metronomZeileSanctusATreLotti = \drummode { 
 }
\include "defSanctusATreLotti.ly"

		%{Arbeitspartitur
		#(set-global-staff-size 14)
		\book { 
 	\bookOutputName "SanctusATreLotti-Arbeitspartitur"
	\score { 
			\removeWithTag #'transponierendepartitur
			\removeWithTag #'klavierauszug
			\removeWithTag #'direction
			\removeWithTag #'einzelstimme
			\removeWithTag #'chorpartitur
			\removeWithTag #'midiausgabe
			\scoreSanctusATreLotti 
 } 
 }
		
		\book { 
 	\bookOutputName "SanctusATreLotti-midi" 
 	 \score { 

		\midi {
			\tempo 4 = 120
			\context {
        \Score
        midiChannelMapping = #'instrument
      }
		}
		
	\removeWithTag #'transponierendepartitur
			\removeWithTag #'klavierauszug
			\removeWithTag #'direction
			\removeWithTag #'chorpartitur
			\removeWithTag #'partitur
			\removeWithTag #'einzelstimme
	
	\unfoldRepeats
	\scoreSanctusATreLotti 
 } 
 }
		Arbeitspartitur%}
		