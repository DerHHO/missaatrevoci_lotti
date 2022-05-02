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


mBreak = { }


globalSanctusATreLotti = {
  \taktstil
  \accidentalStyle modern-voice
  \time 4/4 \key bes \major
  \autoBeamOff
}

tenorNotenSanctusATreLotti = \tempTranspose \relative c' {
  \globalSanctusATreLotti
  R1*3  | % 4
  r2 r4 f4 ( ~ | % 5
  f4 e4 f4 c4 \mBreak | % 6
  d2) c2 | % 7
  c2 f4 bes,4 ~ | % 8
  bes8 bes8 es4 f4 d4 | % 9
  e4 ( f2 ) e4  | \barNumberCheck #10
  f1 | % 11
  r2 r4 f4 | % 12
  f4 f4 f2 | % 13
  f4 f4 f8 ( [ g8 f8 ees8 ] \mBreak | % 14
  d8 [ es8 d8 c8 ] bes2 ) | % 15
  bes2 r4 c4 ~ | % 16
  c8([ d8 es8 f8 ] g4. f8 | % 17
  es4 ) d8 d8 c2 \mBreak | % 18
  c4 a4 bes4 c4 | % 19
  f,4 f'4 f4 ( es4 | \barNumberCheck #20
  d2 c2 ) | % 21
  d4 d4 es4 f4  | % 22
  bes,4 g'4 g4 ( f4 | % 23
  es2 d2) | % 24
  c2 r2 | % 25
  R1 | % 26
  r4 a4 bes4 c4 \mBreak | % 27
  f,4 f'4 f4( es4) | % 28
  d4 d4 es4 f4 | % 29
  bes,4 g'4 g4 ( f4 | \barNumberCheck #30
  es4 d4) c4 a4 | % 31
  bes4 c4 f,4 f'4 \mBreak | % 32
  f4 ( es4 d2 | % 33
  c4 d4 c2) | % 34
  d1 \bar "||"
  \time 3/2  R1. |
  r2 f2 f2 | % 37
  es2 es2 c2  | % 38
  d2 d2 es2 | % 39
  f2. es4 d2 | \barNumberCheck #40
  es1 ( f2 | % 41
  g1 f2 ~ | % 42
  f2 e2. ) e4 | % 43
  f1. \mBreak | % 44
  R1.*6 \mBreak | \barNumberCheck #50
  \time 4/4  r4 a,4 bes4 c4 | % 51
  f,4 f'4 f4 ( es4 | % 52
  d2 c2 ) | % 53
  d4 d4 es4 f4  | % 54
  bes,4 g'4 g4 ( f4 | % 55
  es2 d2) | % 56
  c2 r2 | % 57
  R1 \mBreak | % 58
  r4 a4 bes4 c4 | % 59
  f,4 f'4 f4 ( es4 ) | \barNumberCheck #60
  d4 d4 es4 f4 | % 61
  bes,4 g'4 g4 ( f4 \mBreak | % 62
  es4 d4 ) c4 a4 | % 63
  bes4 c4 f,4 f'4 | % 64
  f4 ( es4 d2 | % 65
  c4 d4 c2 ) | % 66
  d1 \bar "|."
}

tenorTextSanctusATreLotti = \lyricmode {
  San -- ctus, %San -- ctus, %San -- ctus,
  San -- ctus Do -- mi -- nus De -- us Sa -- ba -- oth.
  Ple -- ni sunt coe -- li et ter -- ra
  glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis.
  Be -- ne -- di -- ctus qui ve -- nit
  in no -- mi -- ne Do -- mi -- ni.
  Ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis.
}

baritonNotenSanctusATreLotti = \tempTranspose \relative c' {
  \globalSanctusATreLotti
  r4 bes2 ( a4 | % 2
  bes4 a4 g2) | % 3
  f2 r4 d'4 ( ~ | % 4
  d4 c4 d4 f,4 | % 5
  g2 a2 \mBreak | % 6
  bes2) a2 | % 7
  a2 bes4 g4 ~ | % 8
  g8 g8 c4 a4( bes4) ~ | % 9
  bes4 a4 g4. g8 | \mBreak \barNumberCheck #10
  f2. c'4 | % 11
  c4 c4 c2 | % 12
  c4 c4 c8 ( [ d8 c8 bes8 ] | % 13
  a8 [ bes8 a8 g8 ] f2 ) ( ~ \mBreak | % 14
  f8 [ g8 f8 es8 ] d2 ) | % 15
  d4 f4.( g8[ a8 bes8 ] | % 16
  a8 [ bes8 c8 d8 ] es4. d8 | % 17
  c4 ) bes8 bes8 a2 \mBreak | % 18
  a2 r2 | % 19
  R1 | \barNumberCheck #20
  r4 d,4 es4 f4 | % 21
  bes,4 bes'4 bes4( a4  | % 22
  g2 a4 b4 | % 23
  c2. b4) | % 24
  c4 e,4 f4 g4 | % 25
  c,4 c'4 c4 ( bes4 | % 26
  a2) g2 \mBreak | % 27
  r4 d'4 d4 ( c4 | % 28
  bes2 c2 | % 29
  d4 bes2 a4 | \barNumberCheck #30
  g4 bes4) a4 f4 | % 31
  g4 a4 d,4 d'4 ~ \mBreak | % 32
  d4 c2 ( bes4 | % 33
  a4 bes2 a4) | % 34
  bes1 \bar "||"
  \time 3/2  r2 bes2 bes2 | % 36
  a2 a2 f2 | % 37
  g2 g2 a2  | % 38
  bes2. a4 g2 | % 39
  a1 ( bes2 | \barNumberCheck #40
  c2. bes4 a2 | % 41
  bes1 a2 | % 42
  g1 ) g2 | % 43
  f1. \mBreak | % 44
  r2 bes2 bes2 | % 45
  a2 a2 f2 | % 46
  g2 g2 a2 | % 47
  bes2. a4 g2 | % 48
  a2. ( bes4 a2 | % 49
  g1 ) g2 \mBreak | \barNumberCheck #50
  \time 4/4  f2 r2 | % 51
  R1 | % 52
  r4 d4 es4 f4 | % 53
  bes,4 bes'4 bes4 ( a4  | % 54
  g2 a4 b4 | % 55
  c2. b4) | % 56
  c4 e,4 f4 g4 | % 57
  c,4 c'4 c4( bes4 \mBreak | % 58
  a2) g2 | % 59
  r4 d'4 d4 ( c4 | \barNumberCheck #60
  bes2 c2 | % 61
  d4 bes2 a4 \mBreak | % 62
  g4 bes4 ) a4 f4 | % 63
  g4 a4 d,4 d'4 ~ | % 64
  d4 c2 ( bes4 | % 65
  a4 bes2 a4) | % 66
  bes1 \bar "|."
}

baritonTextSanctusATreLotti = \lyricmode {
  San -- ctus, San -- ctus, San -- ctus
  Do -- mi -- nus De -- us
  Sa -- ba -- oth.
  Ple -- ni sunt coe -- li
  et ter -- ra glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis
  ex -- cel -- sis, ho -- san -- na
  in ex -- cel -- sis.
  Be -- ne di -- ctus qui ve -- nit in no -- mi -- n
  Do -- mi -- ni.
  Be -- ne -- di -- ctus qui ve -- nit
  in no -- mi -- ne Do -- mi -- ni.
  Ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis,
  ex -- cel -- sis, ho -- san -- na in ex -- cel -- -- sis.
}

bassNotenSanctusATreLotti = \tempTranspose \relative c {
  \globalSanctusATreLotti
  \clef "bass"
  bes2 ( c2 | % 2
  d2 ) es4 es4 ( ~ | % 3
  es4 d4 es4 bes4 | % 4
  c2 ) d2 | % 5
  bes4( c4 f,4 f'4) \mBreak | % 6
  bes,8 ( [ c8 d8 es8 ) ] f2 | % 7
  f2 d4 ( es4 ) ~ | % 8
  es8 es8 c4 d4 bes4 | % 9
  c2. c4  | \barNumberCheck #10
  f,1 | % 11
  r4 f'4 f4 f4 | % 12
  f2 f4 f4 | % 13
  f8 ( [ g8 f8 es8 ] d8 [ es8 d8 c8 ] \mBreak | % 14
  bes2) bes4 bes4 ( ~ | % 15
  bes8 [ c8 d8 es8 ] f2 ~ | % 16
  f4 es8 [ d8 ] c4 d4 | % 17
  es4 ) bes8 bes8 f'2 \mBreak | % 18

  \tag #'gemischteausgabe {
    f,2 r2 | % 19
    r4 d4 es4 f4 | \barNumberCheck #20
    bes,4 bes'4 bes4 ( a4 | % 21
    g2. f4 ) ( ~  | % 22
    f4 es4 d2 ) | % 23
    c4 es4 f4 g4 | % 24
    c,4 c'4 c4 ( bes4 ) | % 25
    a4 a4 bes4 c4 | % 26
    f,4 f'4 f4 ( es4 ) \mBreak | % 27
    d4 d4 es4 f4 | % 28
    bes,4 bes2 ( a4 ) | % 29
    g2 ( d2 | \barNumberCheck #30
    es4 bes'4 ) f2 ~ | % 31
    f2 f4 f4 \mBreak | % 32
    f1 ~ | % 33
    f1 | % 34
    bes1
  }
  \tag #'maennerausgabe {
    \relative f {
      f2 r2 | % 19
      r4 d4 es4 f4 | \barNumberCheck #20
      bes,4 bes'4 bes4 ( a4 | % 21
      g2. f4 ) ( ~  | % 22
      f4 es4 d2 ) | % 23
      c4 es4 f4 g4 | % 24
      c,4 c4 c4 ( bes4 ) | % 25
      a4 a4 bes4 c4 | % 26
      f,4 f'4 f4 ( es4 ) \mBreak | % 27
      d4 d4 es4 f4 | % 28
      bes,4 bes'2 ( a4 ) | % 29
      g2 ( d2 | \barNumberCheck #30
      es4 bes4 ) f2 ~ | % 31
      f2 es4 f4 \mBreak | % 32
      f1 ~ | % 33
      f1 | % 34
      bes1
    }
  }


  \bar "||"
  \time 3/2
  R1.*8 |
  \tag #'gemischteausgabe {
    \relative f {
      r2 f2 f2 \mBreak | % 44
      f2 f2 bes,2 | % 45
      c2 c2 d2 | % 46
      es2. d4 c2 | % 47
      d1 ( e2 | % 48
      f1. | % 49
      f2) e1 \mBreak | \barNumberCheck #50
      \time 4/4  f2 r2 | % 51
      r4 d,4 es4 f4 | % 52
      bes,4 bes'4 bes4 ( a4 | % 53
      g2. f4 ~  | % 54
      f4 es4 d2 ) | % 55
      c4 es4 f4 g4 | % 56
      c,4 c'4 c4 ( bes4 ) | % 57
      a4 a4 bes4 c4 \mBreak | % 58
      f,4 f'4 f4 ( es4 ) | % 59
      d4 d4 es4 f4 | \barNumberCheck #60
      bes,4 bes2 ( a4 ) | % 61
      g2 ( d2 \mBreak | % 62
      es4 bes'4 ) f2 ~ | % 63
      f2 f4 f4 | % 64
      f1 ~ | % 65
      f1 | % 66
      bes1
    }
  }
  \tag #'maennerausgabe {
    r2 f'2 f2 \mBreak | % 44
    f2 f2 bes,2 | % 45
    c2 c2 d2 | % 46
    es2. d4 c2 | % 47
    d1 ( e2 | % 48
    f1. ) ~ | % 49
    f2 e1 \mBreak | \barNumberCheck #50
    \time 4/4  f2 r2 | % 51
    r4 d4 es4 f4 | % 52
    bes,4 bes'4 bes4 ( a4 | % 53
    g2. f4 ~  | % 54
    f4 es4 d2 ) | % 55
    c4 es4 f4 g4 | % 56
    c,4 c4 c4 ( bes4 ) | % 57
    a4 a4 bes4 c4 \mBreak | % 58
    f,4 f'4 f4 ( es4 ) | % 59
    d4 d4 es4 f4 | \barNumberCheck #60
    bes,4 bes'2 ( a4 ) | % 61
    g2 ( d2 \mBreak | % 62
    es4 bes4 ) f2 ~ | % 63
    f2 f4 f4 | % 64
    f1 ~ | % 65
    f1 | % 66
    bes1
  }
  \bar "|."
}

bassTextSanctusATreLotti = \lyricmode {
  San -- ctus, San -- ctus, San -- ctus,
  San -- ctus Do -- mi -- nus De -- us Sa -- ba -- oth.
  Ple -- ni sunt coe -- li et ter -- ra
  glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis, __
  in ex -- cel -- sis.
  Be -- ne -- di -- ctus qui ve -- nit
  in no -- mi -- ne Do -- mi -- ni.
  Ho -- san -- na in ex -- cel sis,
  ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis,
  in ex -- cel -- sis.
}

sopranNotenSanctusATreLotti = \tempTranspose \relative c' {
  \globalSanctusATreLotti
  \tenorNotenSanctusATreLotti
}

altNotenSanctusATreLotti = \tempTranspose \relative c' {
  \globalSanctusATreLotti
  \baritonNotenSanctusATreLotti

}

metronomZeileSanctusATreLotti = \drummode {
}
\include "defSanctusATreLotti.ly"

%{Arbeitspartitur
#(set-global-staff-size 20)
\book {
  \bookOutputName "SanctusATreLotti-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \removeWithTag #'maennerausgabe
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
    \removeWithTag #'maennerausgabe

    \unfoldRepeats
    \scoreSanctusATreLotti
  }
}
Arbeitspartitur%}
