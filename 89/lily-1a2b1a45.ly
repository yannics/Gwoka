%% Generated by lilypond-book
%% Options: [indent=0\mm,line-width=345\pt,quote,staffsize=12]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************

#(set-global-staff-size 12)

\paper {
  indent = 0\mm
  line-width = 345\pt
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 345\pt - 2.0 * 0.4\in
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 268

gauche = \markup {
\override #'(thickness . 3)
\draw-line #'(1 . 2.5)
}
droite = \markup {
\override #'(thickness . 3)
\draw-line #'(1 . -2.5)
}
<<
\new Staff 
{
\set Staff.instrumentName = #"A "
\clef percussion
\time 3/4
\override Stem #'length-fraction = #(magstep 3)
\override Score.MetronomeMark #'padding = #3
\tempo 4 = 110
\override TextScript #'staff-padding = #2.7
\partial 8 d16_\gauche r16
\repeat volta 2 {
   d8_\droite r8 d'8_\droite d'_\gauche d'_\droite d16_\gauche r16 }
}
\new Staff 
{
\overrideProperty #"Score.NonMusicalPaperColumn"
            #'line-break-system-details #'((Y-offset . 0)
                                           (alignment-distances . (17)))
\override Score.SpanBar #'transparent = ##t
\override Staff.StaffSymbol #'line-count = #1
\startStaff
\override NoteHead #'no-ledgers = ##t
\set Staff.instrumentName = #"B "
\clef percussion
\time 3/4
\override Staff.Clef #'transparent = ##t 
\partial 8 \once \override Rest #'transparent = ##t r8
\override Stem #'length-fraction = #(magstep 3)
\override Stem #'direction = #up
   \override Beam #'positions = #'(5 . 5)
\override TextScript #'staff-padding = #2.7
\repeat volta 2 {
c'8_\droite r8 f'8_\droite f'_\gauche r8 g8_\gauche }
}
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
