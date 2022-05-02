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




globalGloriaATreLotti = { 
	\taktstil
 \accidentalStyle modern-voice
 }

vorspielpausenGloriaATreLotti = { 
	
}

tenorNotenGloriaATreLotti = \tempTranspose \relative c' { 
	 \globalGloriaATreLotti
	 
 }

baritonNotenGloriaATreLotti = \tempTranspose \relative c' { 
	 \globalGloriaATreLotti
	 
 }

bassNotenGloriaATreLotti = \tempTranspose \relative c { 
	 \globalGloriaATreLotti
	 
 }

sopranNotenGloriaATreLotti = \tempTranspose \relative c' { 
	 \globalGloriaATreLotti
	 
 }

altNotenGloriaATreLotti = \tempTranspose \relative c' { 
	 \globalGloriaATreLotti
	 
 }

bassNotenGloriaATreLotti = \tempTranspose \relative c { 
	 \globalGloriaATreLotti
	 
 }

metronomZeileGloriaATreLotti = \drummode { 
 }
\include "defGloriaATreLotti.ly"

		%{Arbeitspartitur
		#(set-global-staff-size 14)
		\book { 
 	\bookOutputName "GloriaATreLotti-Arbeitspartitur"
	\score { 
			\removeWithTag #'transponierendepartitur
			\removeWithTag #'klavierauszug
			\removeWithTag #'direction
			\removeWithTag #'einzelstimme
			\removeWithTag #'chorpartitur
			\removeWithTag #'midiausgabe
			\scoreGloriaATreLotti 
 } 
 }
		
		\book { 
 	\bookOutputName "GloriaATreLotti-midi" 
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
	\scoreGloriaATreLotti 
 } 
 }
		Arbeitspartitur%}
		