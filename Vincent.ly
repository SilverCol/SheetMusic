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
  b d, g g' c, d, g g'|
  b, d, g e' d4 c |
  a,8 e' a e b' e, a b |
  \acciaccatura b c e, a e b'4 c |
  c,8 e g c b e, g b |
  d, a' c e \acciaccatura e fis c g'( a) |
  g d, b' g
  
}

refrain = \relative {
  <a' c>( <b d>) <a c>( <g b>) |
  g d g g'
  <g, b>( <a c>) <b d>( <g b>) |
  a, e' a b \acciaccatura b c e, d' e |
  fis a, c a fis' a, c a |
  g' d, g d g' d, g d |
  b' a, e' g 
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