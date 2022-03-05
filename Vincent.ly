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
  << {e8 b' e g c4 d} \\ {r2 r8 b,4 e8} >> |
  << {e'8 e, a e d'4 e} \\ {a,,2~ 8 e'4 c'8}  >> |
  << {fis8 a, c a fis' a, c a} \\ {d,1}  >> |
  <e, b' e g b e>1\arpeggio |
  << {a8 e' g cis e4 cis} \\ {r2 r8 e,4 g8} >> |
  << {c e, g c d, a' c a} \\ {a,2 r2} >> |
  << {g''8 d, g d fis' d, e' d,} \\ {g,1} >> |
  << {d''8 d, g d'} \\ {g,,2} >>
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