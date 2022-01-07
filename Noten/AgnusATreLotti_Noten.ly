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


mBreak = {  }


globalAgnusATreLotti = {
  \taktstil
  \accidentalStyle modern-voice
  \time 2/2
  \key bes\major
}

ablaufzeileAgnusATreLotti = {

}

vorspielpausenAgnusATreLotti = {

}

tenorNotenAgnusATreLotti = \tempTranspose \relative c' {
  \globalAgnusATreLotti
  \autoBeamOff
  R1  | % 2
  R1*3 \mBreak   | % 5
  R1  | % 6
  bes2  c2 | % 7
  d4 bes2 es4 | % 8
  c4 d4 bes2 \mBreak | % 9
  es4 c4 d2 ( | \barNumberCheck #10
  e4 f2 e4) | % 11
  f1 | % 12
  R1*2  | % 14
  r4 f2 es4 | % 15
  f4 g4 c,4 ( f4 ~ | % 16
  f4 es2 d4 ~ | % 17
  d4 c4 f2 | % 18
  es2 d2 ) \mBreak | % 19
  c4 c2 a4 | \barNumberCheck #20
  bes4 c4 f,4 ( bes4 ~ | % 21
  bes4 a4 ) g2 | % 22
  a4 ( bes4 c4 d4 | % 23
  es2 d2 ) \mBreak | % 24
  c4 f2 es4 | % 25
  f4 g4 es4 ( f8[ es8]) | % 26
  d2. es8 ( [ d8 ] | % 27
  c4 d4 c2 ) | % 28
  d1\fermata \bar "|."
}

tenorTextIAgnusATreLotti = \lyricmode {
  A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di:
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis,
  no -- bis mi -- se -- re -- re no -- bis,
  no -- bis.
}

tenorTextIIAgnusATreLotti = \lyricmode {
  _ _ _ _
  _ _ _ _ _ _ _ _
  do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem,
  pa -- cem,
  do -- na no -- bis pa -- cem,
  pa -- cem.
}

baritonNotenAgnusATreLotti = \tempTranspose \relative c' {
  \globalAgnusATreLotti
  R1 | % 2
  f2 g2 | % 3
  a4 f2 bes4 | % 4
  g4 a4 f4 bes4 \mBreak | % 5
  bes4 ( a4 ) g2 ( | % 6
  f4 bes2 a4) | % 7
  bes4 g4 g4 c4 | % 8
  a4 ( bes4 g4 f4 \mBreak | % 9
  g4 a4 bes8 [ g8 ] bes4 ~ | \barNumberCheck #10
  bes4 a4 g2) | % 11
  a4 c2 a4 | % 12
  bes4 c4 f,4 ( bes4 ~ | % 13
  bes4 a4 g2 )  | % 14
  f2 g4 c4 | % 15
  a4 d4 es4 ( c4 | % 16
  d4 g,4 a2 | % 17
  g2 a4 bes4 | % 18
  g4 a4 f4 g4 ) \mBreak | % 19
  e2 r2 | \barNumberCheck #20
  R1*3 | % 23
  r2 r4 bes'4 ~ \mBreak | % 24
  bes4 a4 bes4 c4 | % 25
  a4 ( bes4 c2 | % 26
  c4 bes8 [ a8 ]) bes2 | % 27
  a4( bes2 a4 ) | % 28
  bes1 ^\fermata \bar "|."
}

baritonTextIAgnusATreLotti = \lyricmode {
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di,
  pec -- ca -- ta mun -- di
  mi -- se re -- re no -- bis,
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis, no -- bis.
}

baritonTextIIAgnusATreLotti = \lyricmode {
  _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem,
  pa -- cem.

}

bassNotenAgnusATreLotti = \tempTranspose \relative c {
  \globalAgnusATreLotti
  bes2 c2 | % 2
  d4 bes2 es4 | % 3
  c4 d4 bes2 | % 4
  es4 c4 d4. ( es8 \mBreak | % 5
  f8 [ c8 ] f2 es4 ~ | % 6
  es4 d4 es4 f4 )| % 7
  bes,4 es4 es4 c4 | % 8
  f4 ( d4 es4 d4 \mBreak | % 9
  c4 f4 bes,2 | \barNumberCheck #10
  c1 ) | % 11
  f2. f4 ~ | % 12
  f4 es4 f4 g4 | % 13
  c,4 ( f2 es4 ) ( ~  | % 14
  es4 d4 c2 ) | % 15
  d4 bes2 a4 | % 16
  bes4 c4 f,4 ( f'4 | % 17
  es2. d4 ~ | % 18
  d4 c2 b4 ) \mBreak | % 19
  c2 r4
  \tag #'maennerausgabe {
    f4 ~ | \barNumberCheck #20
    f4 es4 f4 g4 | % 21
    c,4 ( f2 ) es4 ~ | % 22
    es4 d4 ( es4 f4 | % 23
    g4 a4 bes4 bes,4 ) \mBreak | % 24
    f'1 ~ | % 25
    f1 ~ | % 26
    f1 | % 27
    f1 | % 28
    bes,1 _\fermata \bar "|."
  }
  \tag #'gemischteausgabe {
    \relative f, {
      f4 ~ | \barNumberCheck #20
      f4 es4 f4 g4 | % 21
      c4 ( f,2 ) es4 ~ | % 22
      es4 d4 ( es4 f4 | % 23
      g4 a4 bes4 bes,4 ) \mBreak | % 24
      f'1 ~ | % 25
      f1 ~ | % 26
      f1 | % 27
      f1 | % 28
      bes1 _\fermata \bar "|."
    }
  }
}

bassTextIAgnusATreLotti = \lyricmode {
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di,
  pec -- ca -- ta mun -- di:
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis
  mi -- se -- re -- re no -- bis,
  no -- bis,
  no -- bis.
}


bassTextIIAgnusATreLotti = \lyricmode {
  _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem,
  pa -- cem,
  pa -- cem.
}

sopranNotenAgnusATreLotti = \tempTranspose \relative c' {
  \globalAgnusATreLotti
  \tenorNotenAgnusATreLotti
}

altNotenAgnusATreLotti = \tempTranspose \relative c' {
  \globalAgnusATreLotti
  \baritonNotenAgnusATreLotti
}


metronomZeileAgnusATreLotti = \drummode {
}
\include "defAgnusATreLotti.ly"

%{Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "AgnusATreLotti-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \removeWithTag #'maennerausgabe
    \scoreAgnusATreLotti
  }
}

\book {
  \bookOutputName "AgnusATreLotti-midi"
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
    \removeWithTag #'maennerausgabe

    \unfoldRepeats
    \transpose c g \chorpartiturGemischtAgnusATreLotti
  }
}
Arbeitspartitur%}
