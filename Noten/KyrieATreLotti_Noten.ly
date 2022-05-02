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

ablaufzeileKyrieATreLotti = {

}

globalKyrieATreLotti = {
  \taktstil
  \accidentalStyle modern-voice
  \time 2/2 \key bes \major | % 1
}

vorspielpausenKyrieATreLotti = {

}

tenorNotenKyrieATreLotti = \tempTranspose \relative c' {
  \globalKyrieATreLotti
  \autoBeamOff
  R1*4 |
  R1 |
  R1 |
  bes4.  bes8 c2 | % 8
  r4 d4 es4 ( f4 ) | % 9
  bes,4 es2 (  d4 | \barNumberCheck #10
  c4 )  f2 ( e4 ) | % 11
  f1 | \mBreak % 12
  R1 | % 13
  r2 r4  f4 | % 14
  g4 ( d4 es4 f8 [ g8 ] | % 15
  f4. es8 d8 [ es8 ] f4 ) | % 16
  bes,2 r2 \mBreak | % 17
  bes4.  bes8 c2 | % 18
  r4 d4 es4 ( f4 ) | % 19
  bes,4 es2 ( d4 | \barNumberCheck #20
  c2 d2 ) | % 21
  c2. c4  | % 22
  d1 ^\fermata \bar "||"
  \mBreak | % 23
  R1*3 | % 26
  r4   bes4 c4  d4 | % 27
  es4  c4 bes4  es4 ( ~ \mBreak | % 28
  ees8[ d] d4 c) f4~ |
  f4  e4 f4   c4 | \barNumberCheck #30
  d4 es4 f4( d4 | % 31
  es4. f8 g4 f4 ~ | % 32
  f4 es2 ) d4 \mBreak | % 33
  c4  d4 es4 f4 | % 34
  g2( f2 | % 35
  es2 d2 | % 36
  c1 | % 37
  d2.)  d4   | % 38
  c1 ^\fermata \bar "||" \mBreak | % 39
  R1*2 | % 41
  r2  f4.  es8  | % 42
  d2 r4  g4 | % 43
  f4 ( es4 d4 c4 \mBreak | % 44
  b4 c8 [ d8 ] es2 | % 45
  d2 )  c2  | % 46
  R1 | % 47
  f4.   es8 d2  \mBreak | % 48
  r4  g4 f4 ( es4 | % 49
  d4 c4 bes4 c8 [ d8 ] | \barNumberCheck #50
  es2 d2 | % 51
  c4  f2 es4  \mBreak | % 52
  d4 g2 f4 ~  | % 53
  f4  es2) d4  | % 54
  es2  es4.  d8  | % 55
  c2  f4.  es8  | % 56
  d2 r2 \mBreak | % 57
  g2 (  f2 | % 58
  es2 d2 | % 59
  c2 d2) | \barNumberCheck #60
  c2. c4  | % 61
  d1 ^\fermata  \bar "|."

}

tenorTextKyrieATreLotti = \lyricmode {
  Ky -- ri -- e e -- lei -- son,
  e -- lei -- son,
  e -- lei -- son.
  Ky -- ri -- e e -- lei -- son, e -- le -- i -- son.

  Chri -- ste e -- lei -- i -- son, e --
  le -- i -- son, Chri -- ste e -- le -- i
  son, Chri -- ste e -- le -- i -- son.

  Ky -- ri -- e e -- lei -- son. Ky -- ri -- e
  e -- le -- i -- son.
  Ky -- ri -- e, Ky -- ri -- e
  e -- le -- i -- son.
}

baritonNotenKyrieATreLotti = \tempTranspose \relative c' {
  \globalKyrieATreLotti
  \autoBeamOff
  R1*2 | % 3
  r2 f4. f8 | % 4
  g2 r4 a4 | % 5
  bes( c4) f,4 bes~ |
  bes4( as2 g4 | % 7
  f4 ) bes2( a4) | % 8
  bes4 bes2 ( as4 ~ | % 9
  as4 g4 f4 ) bes4 ~ | \barNumberCheck #10
  bes4( a4 bes4. )  bes8 | % 11
  a4  c4 d4( a4  | % 12
  bes4 c8 [ d8 ] c4. bes8 | % 13
  a4 g4) f2  | % 14
  r4  bes4 c4 ( g4 | % 15
  a4 bes8 [ c8 ] bes4. a8 | % 16
  g4 a8 [ bes8 ] a8 [ bes8 ] c4 )  | % 17
  f,4 bes2( a4 | % 18
  bes4  bes2 as4 ~ | % 19
  as4 g4 f4 bes4 | \barNumberCheck #20
  a2 ) bes2~  | % 21
  bes2 a2 | % 22
  bes1 ^\fermata \bar "||"
  \mBreak | % 23
  r2 r4   f4 | % 24
  g4  a4  bes4 g4  | % 25
  f4 bes4.( a8 a4 | % 26
  g2 a4 bes4 ~ | % 27
  bes4 a2 g4 \mBreak | % 28
  f4 bes4. a8 a4) | % 29
  bes4.  bes8 a2  | \barNumberCheck #30
  r4  g4 a4 bes4 | % 31
  c4 ( a4 bes4. a8 | % 32
  g4. a8 bes4. ) g8 \mBreak | % 33
  a4  bes2 ( a4 | % 34
  bes4 c4 a4 bes4 | % 35
  g4 a4 f4 g4 | % 36
  es4 f8 [ g8 ] f4 c'4 ) ~ | % 37
  c4  bes8 ( [ a8 ] bes2 ) ~ | % 38
  bes4 a8 [ g8 ] a2 \fermata \bar "||" \mBreak | % 39
  c4.  bes8 a2  | \barNumberCheck #40
  r4  d4 c4 ( bes4 | % 41
  a4 g4 f4 g8 [ a8 ] | % 42
  bes4. a8 g4. a8 | % 43
  bes4 c4 f,4 a4 ) \mBreak | % 44
  g4( a8[ b8] c4 ) c4 ~ | % 45
  c4 b4 c2 | % 46
  c4. bes8 a2  | % 47
  d4. c8 bes2  \mBreak | % 48
  a4 (  bes4 ) f4 ( g8 [ a8 ] | % 49
  bes4 a4 g4 a8 [ bes8 ] | \barNumberCheck #50
  c4 g8 [ a8 ] bes8 [  f8 ] bes4 ~ | % 51
  bes4  as4  g4  c4~ | % 52
  c4  bes4 a4. c16 [ as16 ] | % 53
  g2 f4.)  f8 | % 54
  g2  c4.  bes8  | % 55
  a2  d4.  c8  | % 56
  bes4 bes8 ( [ c8 ] d8 [ a8 ] d4 ) ( ~ \mBreak | % 57
  d4 c2 bes4 ~ | % 58
  bes4 a2 g4 | % 59
  a8[ bes8] c2) bes4(~
  | \barNumberCheck #60
  bes4  a8 [ g8 ) ] a2  | % 61
  bes1 ^\fermata  \bar "|."
}

baritonTextKyrieATreLotti = \lyricmode {
  Ky -- ri -- e e -- lei -- son
  e -- lei -- son, e -- lei -- i -- son,
  e -- lei -- son,
  e -- lei -- son,
  e -- le -- i -- son.

  Chri -- ste e -- le -- i -- son, e --
  le -- i -- son. Chri -- ste e -- le -- i --
  son, e -- lei -- son. __ _

  Ky -- ri -- e e -- lei -- son, __
  Ky -- ri -- e, Ky -- ri -- e, Ky -- ri -- e
  e -- le -- i -- son. Ky -- ri -- e, Ky -- ri -- e e --
  le -- i -- son.
}

bassNotenKyrieATreLotti = \tempTranspose \relative c {
  \globalKyrieATreLotti
  \autoBeamOff
  bes4. bes8 c2 | % 2
  r4 d4 es4 ( f4 ) | % 3
  bes,4 es2 ( d4 | % 4
  es4. d8 c4 f4 ~ | % 5
  f4 es2 d4 \mBreak | % 6
  c4. d8 es8 [ bes8 ] es4 ~ | % 7
  es4 d4) ees4( f) |
  bes,4 bes c( d) |
  ees2 bes |
  f'( g) |
  f2 r4 f |
  g4( d ees f8[ g] |
  f4. ees8 d4.) c8 |
  bes2 r |
  r4 f' g( d |
  ees4 f8[ g] f4. ees8 |
  d2 ees4 f)
  bes,4 bes c( d) |
  ees2 bes |
  f'1~ |
  f2. f4 |
  bes,1\fermata \bar "||"
  r4 bes c d |
  ees c bes ees~ |
  ees8([ d] d4 c f~ |
  f8[ ees] ees2 d4 |
  c f d ees |
  bes2 f') |
  g4. g8 f2 |
  R1*2 |
  r4 c d ees |
  f4 d c f~ |
  f( ees2 d4~ |
  d4 c2 bes4~ |
  bes a8[ g] a2) |
  bes2. bes4 |
  f1 \bar "||"

  r2 f'4. ees8 |
  d2 r4 g |
  f( ees d c |
  bes c8[ d] ees2 |
  d4 c bes f')~ |
  f4 ees8([ d] c2) |
  g'4. f8 ees2 |
  r2 f4. ees8 |
  d2 r4 g |
  f4( ees d c |
  bes c8[ d] ees4 d |
  c2 bes) |
  f'2 c |
  | % 39
  g'2( d |
  ees4.) ees8 bes2 |
  ees4. d8 c2 |
  f4. ees8 d2 |
  g2( f
  ees d2  | % 41
  c bes) |
  f'1~ |
  f2. f4 |
  bes,1\fermata \bar "|."
}

bassTextKyrieATreLotti = \lyricmode {
  Ky -- ri -- e e -- lei -- son,
  e --
  lei -- son, e -- lei -- son, e -- lei -- son,
  e -- le -- i -- son, e -- lei --
  son, e -- lei -- son, e -- le -- i -- son.

  Chri -- ste e -- le -- i -- son, e --
  le -- i -- son. Chri -- ste e --
  le -- i -- son, e -- le -- i -- son.

  Ky -- ri -- e e -- lei --
  son. __ Ky -- ri -- e, Ky -- ri -- e e -- lei -- son, e --
  le -- i -- son. Ky -- ri -- e, Ky -- ri -- e e --
  le -- i -- son.
}

sopranNotenKyrieATreLotti = \tempTranspose \relative c' {
  \globalKyrieATreLotti
  \tenorNotenKyrieATreLotti
}

altNotenKyrieATreLotti = \tempTranspose \relative c' {
  \globalKyrieATreLotti
  \baritonNotenKyrieATreLotti
}


metronomZeileKyrieATreLotti = \drummode {
}
\include "defKyrieATreLotti.ly"

%{Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "KyrieATreLotti-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreKyrieATreLotti
  }
}

\book {
  \bookOutputName "KyrieATreLotti-midi"
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
    \scoreKyrieATreLotti
  }
}
Arbeitspartitur%}
