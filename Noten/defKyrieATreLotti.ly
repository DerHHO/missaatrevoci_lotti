\version "2.22.0"

chorpartiturMaennerKyrieATreLotti = {
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
            \transpose c c \tenorNotenKyrieATreLotti
          }
          \tag #'klingendepartitur {
            \clef "G_8"
            \tenorNotenKyrieATreLotti
          }
        }
        \addlyrics { \tenorTextKyrieATreLotti }

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
            \transpose c c \baritonNotenKyrieATreLotti
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \baritonNotenKyrieATreLotti
          }
        }
        \addlyrics { \baritonTextKyrieATreLotti }
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
            \transpose c c \bassNotenKyrieATreLotti
          }
          \tag #'klingendepartitur {
            \clef "bass"
            \bassNotenKyrieATreLotti
          }
        }
        \addlyrics { \bassTextKyrieATreLotti }

      >>
    >>
  >>
}


chorpartiturGemischtKyrieATreLotti = {
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
            \transpose c g \sopranNotenKyrieATreLotti
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenKyrieATreLotti
          }
        }
        \addlyrics { \tenorTextKyrieATreLotti }
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
            \transpose c c \altNotenKyrieATreLotti
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \transpose c' c \altNotenKyrieATreLotti
          }
        }
        \addlyrics { \baritonTextKyrieATreLotti }
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
            \transpose c g \bassNotenKyrieATreLotti
          }
          \tag #'klingendepartitur {
            \clef "bass"
            \bassNotenKyrieATreLotti
          }
        }
        \addlyrics { \bassTextKyrieATreLotti }

      >>
    >>
  >>
}

scoreKyrieATreLotti = {
  <<
    \chorpartiturMaennerKyrieATreLotti
    %\chorpartiturGemischtKyrieATreLotti
  >>
}