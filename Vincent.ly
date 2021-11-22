\version "2.22.1"


\header {
  title = "Vincent (Starry, Starry Night)"
  composer = "Don McLean"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}


verse = \relative {
  d'8( e) g( a) |
  << {b\( d, g g' c, d, g g'} \\ {g,,2 g} >>|
  << {b'8 d, g e' d4 c\)} \\ {g,2~ 8 g4 g8} >> |
  \voiceOne a8\( e' a e b' e, a b |
  \acciaccatura b c e, a e\) <b' a,>4 <c b,> |
  c,8 e g c b e, g b |
  d, a' c e \acciaccatura e fis c g'( a) |
  << {g d, b' g} \\ {g,2} >>
}

refrain = \relative {
  <a' c>8( <b d>) <a c>( <g b>) |
  << {g d g g'} \\ {g,,2} >>
  <g' b>8( <a c>) <b d>( <g b>) |
  a, e' a b \acciaccatura b c e, d' e |
  << {fis a, c a fis' a, c a} \\ {d,1} >> |
  << {g'8 d, g d g' d, g d} \\ {g,2 fis} >> |
  << {b'8 b, e g c4 d} \\ {e,,2 e8 b'4 e8} >> |
  << {e'8 e, a e d'4 e} \\ {a,,2 a8 e'4 c'8}  >> |
  << {fis8 a, c a fis' c a d,} \\ {d2~ d4.}  >> |
}

music = \relative {
  \key g \major
  \tempo 4 = 100
  \partial 2 \verse
  \bar ":|."
  \refrain
  \bar "|."
}

\score {
  \music
  \layout {}
  \midi {}
}