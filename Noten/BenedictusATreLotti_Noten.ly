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




globalBenedictusATreLotti = { 
	\taktstil
 \accidentalStyle modern-voice
 }

vorspielpausenBenedictusATreLotti = { 
	
}

tenorNotenBenedictusATreLotti = \tempTranspose \relative c' { 
	 \globalBenedictusATreLotti
	 
 }

baritonNotenBenedictusATreLotti = \tempTranspose \relative c' { 
	 \globalBenedictusATreLotti
	 
 }

bassNotenBenedictusATreLotti = \tempTranspose \relative c { 
	 \globalBenedictusATreLotti
	 
 }

sopranNotenBenedictusATreLotti = \tempTranspose \relative c' { 
	 \globalBenedictusATreLotti
	 
 }

altNotenBenedictusATreLotti = \tempTranspose \relative c' { 
	 \globalBenedictusATreLotti
	 
 }

bassNotenBenedictusATreLotti = \tempTranspose \relative c { 
	 \globalBenedictusATreLotti
	 
 }

metronomZeileBenedictusATreLotti = \drummode { 
 }
\include "defBenedictusATreLotti.ly"

		%{Arbeitspartitur
		#(set-global-staff-size 14)
		\book { 
 	\bookOutputName "BenedictusATreLotti-Arbeitspartitur"
	\score { 
			\removeWithTag #'transponierendepartitur
			\removeWithTag #'klavierauszug
			\removeWithTag #'direction
			\removeWithTag #'einzelstimme
			\removeWithTag #'chorpartitur
			\removeWithTag #'midiausgabe
			\scoreBenedictusATreLotti 
 } 
 }
		
		\book { 
 	\bookOutputName "BenedictusATreLotti-midi" 
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
	\scoreBenedictusATreLotti 
 } 
 }
		Arbeitspartitur%}
		