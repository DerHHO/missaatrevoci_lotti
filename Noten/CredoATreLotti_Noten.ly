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




globalCredoATreLotti = { 
	\taktstil
 \accidentalStyle modern-voice
 }

vorspielpausenCredoATreLotti = { 
	
}

tenorNotenCredoATreLotti = \tempTranspose \relative c' { 
	 \globalCredoATreLotti
	 
 }

baritonNotenCredoATreLotti = \tempTranspose \relative c' { 
	 \globalCredoATreLotti
	 
 }

bassNotenCredoATreLotti = \tempTranspose \relative c { 
	 \globalCredoATreLotti
	 
 }

sopranNotenCredoATreLotti = \tempTranspose \relative c' { 
	 \globalCredoATreLotti
	 
 }

altNotenCredoATreLotti = \tempTranspose \relative c' { 
	 \globalCredoATreLotti
	 
 }

bassNotenCredoATreLotti = \tempTranspose \relative c { 
	 \globalCredoATreLotti
	 
 }

metronomZeileCredoATreLotti = \drummode { 
 }
\include "defCredoATreLotti.ly"

		%{Arbeitspartitur
		#(set-global-staff-size 14)
		\book { 
 	\bookOutputName "CredoATreLotti-Arbeitspartitur"
	\score { 
			\removeWithTag #'transponierendepartitur
			\removeWithTag #'klavierauszug
			\removeWithTag #'direction
			\removeWithTag #'einzelstimme
			\removeWithTag #'chorpartitur
			\removeWithTag #'midiausgabe
			\scoreCredoATreLotti 
 } 
 }
		
		\book { 
 	\bookOutputName "CredoATreLotti-midi" 
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
	\scoreCredoATreLotti 
 } 
 }
		Arbeitspartitur%}
		