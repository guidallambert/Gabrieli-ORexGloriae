
%%%%%%%%%%%%%%%%%%
% Some useful definitions for early music
%%%%%%%%%%%%%%%%%%

italicas=\override LyricText #'font-shape = #'italic
rectas=\override LyricText #'font-shape = #'upright
ss=\once \set suggestAccidentals = ##t
ficta = \once \set suggestAccidentals = ##t
date = #(strftime "%Y-%m-%d" (localtime (current-time)))
%m0 = \melismaEnd
%m1 = \melisma

%% Defining graphics for unusual mensural time signatures!
#(
  define ((double-time-signature2 glyph a) grob) (
       grob-interpret-markup grob (
          markup  (
            #:line ( #:musicglyph glyph #:number #:vcenter a )
          )
       )
  )
)
#(
  define ((double-time-signature3 glyph a b) grob) (
       grob-interpret-markup grob (
          markup  (
            #:line ( #:musicglyph glyph #:vcenter #:column (a b) )
          )
       )
  )
)
#(
  define ((custom-time-signature glyph) grob) (
       grob-interpret-markup grob (
          markup  (
            #:line ( #:musicglyph glyph)
          )
       )
  )
)


%%%%%%%%%%%%%%%%%%
% 3 - Score content: notes
%%%%%%%%%%%%%%%%%%

%\language "english"

StaveANotes = {

  % clef c1  % tweak / uncomment for debugging - this should override the clef in the score block

  \override Score.TimeSignature.stencil =
    #(custom-time-signature "timesig.mensural22")
  \time 2/1

  %\mark \markup \italic {"Prima Pars"}

  %\override Score.TimeSignature.stencil =
  %   #(double-time-signature2 "timesig.mensural98" "3")
  % \time 3/2

  % \cadenzaOn
   r\longa
  r\breve g'\breve a'1 c''1. c''2 b'2 b'1 b'2 c''2 c''2. \melisma
  b'4 a'2. g'4 g'2 \melismaEnd  fis'2 g'1 fis'2 \melismaEnd  g'1

  r\longa r1 r2 d'2 a'2
  a'2 a'2 e'2 fis'2 fis'2
  g'\breve. r2 b'2 c''2 c''2 c''2 g'2 a'1. a'2 g'1 r1 r2 fis'2
  g'2 g'2 g'2 d'2 e'2 e'2 g'1 r1 r2 c''1 b'2 c''2
  c''2 d''2 c''2 c''2 a'2 g'\breve. g'\breve r\breve
  r1 c''1 c''2 a'2 b'1 c''1 r\longa r\breve b'1 b'2 a'2
  a'1 b'2 b'2 c''1. b'2 b'\breve r\breve r1 r2 g'2 g'1 fis'2
  g'2 a'2 a'2 f'1 e'2 f'2
  a'\breve r\breve r2 g'2 g'1 fis'2 g'2 a'2 a'2 f'1 e'2 f'2 a'\breve r1
  a'1. a'2 a'1 bes'2 a'2. \melisma g'4 g'1 \melismaEnd f'2 g'\breve r\breve r1 b'1.
  b'2 b'1 c''2 b'2.\melisma a'4 a'1 \melismaEnd g'2 a'\breve. r1 r\breve

  %%  NB THis is done with blackening in the score - might convert these to triplets because it's not actually a time sig change?
 %\time 3/1
 \times 2/3 { g'1 g'1 g'1 } a'\breve
 \times 2/3 { b'1 b'1 b'1 } \times 2/3 {   c''\breve r1 }
 \times 2/3 { c''1 c''1 c''1 } \times 2/3 {   d''\breve r1 }
 \times 2/3 { b'1 b'1 b'1 } \times 2/3 {   c''\breve r1 }
 \times 2/3 { g'1 g'1 g'1 }  a'\breve
 \times 2/3 { b'1 b'1 b'1 } \times 2/3 {   c''\breve r1 }
 \times 2/3 { c''1 c''1 c''1 } \times 2/3 {  d''\breve r1 }
 \times 2/3 { b'1 b'1 b'1 } \times 2/3 {  c''2 c''1 b'2 a'1 }
 \times 2/3 {  b'\breve g'1 } \times 2/3 {  g'1 g'\breve }
  g'\maxima*1/4
    \bar "|."
  %\cadenzaOff


}
StaveBNotes = {

  % clef c3  % tweak / uncomment for debugging - this should override the clef in the score block

  r\maxima c'\breve e'1 g'1. g'2
  e'1 r1 d'\breve. e'1 g'2. g'4 fis'2 fis'1 fis'2 g'2 g'2. \melisma f'4 e'2. d'4 d'2 \melismaEnd
  cis'2 \melisma d'1 cis'2 \melismaEnd d'\breve.
  r\breve e'\breve f'2 f'2 f'2 c'2 d'2 d'2 e'2 e'2 d'2 d'2 b2 e'2 d'2 g'2 g'1
  r2 g'1 f'2 g'2 g'2 e'2 d'2 c'2 c'2 \[ g1 \melisma a1 \melismaEnd \] d'2. \melisma c'4 b2\melismaEnd  e'1 e'2 d'1 e'1
  r2 e'2 e'2 d'2
  d'1 e'2 e'2 e'2 d'2 d'1 e'2 g'2 g'2 fis'2 g'1 g'2 e'2 f'1. e'2 e'1 r2
  d'2 d'2 cis'2 d'1 d'2 d'2 f'1. d'2 d'\breve r\longa r\breve r2 d'2 d'1 cis'2
  d'2
  f'2 f'2 e'2 a2 b1 a1 r1 r2 d'2 d'1 cis'2 d'2 a2 a1 d'2. \melisma c'8 b8 c'2 \melismaEnd
  a1 b1 a1 r1 f'1. f'2 e'2 d'1 a2 b1 g1 r\breve r1 r2 d'1 d'2 g'1 g'2 g'2
  f'1 e'2 e'1 e'2 e'1 f'2. \melisma e'4 d'2. c'4 b2 \melismaEnd c'2 a1

    b\breve %blackening = change to triplets rather than the current time change?
  \times 2/3 { d'1 d'1 d'1 }   d'\breve
  \times 2/3 { g'1 g'1 g'1 }   c'\breve
  \times 2/3 { f'1 f'1 f'1 } \times 2/3 { d'1 g'\breve } \times 2/3 { e'\breve d'1 } b\breve
  \times 2/3 { d'1 d'1 d'1 } d'\breve
  \times 2/3 { g'1 g'1 g'1 } c'\breve
  \times 2/3 { f'1 f'1 f'1 } \times 2/3 { d'1 g'\breve }
  \times 2/3 { e'1. g'1 f'2 } \times 2/3 {g'\breve e'1 }
  \times 2/3 { d'1 e'\breve } d'\breve

}
StaveCNotes = {

  % clef c4  % tweak / uncomment for debugging - this should override the clef in the score block

  r1 g\breve a1 c'1. c'2 b1 c'2.
  c'4 a2 a2 a1 g1 g\breve a1 c'2. c'4 b1 a2 b2 a2 a2 c'1 b1 d'1 a1 b2. b4
  c'1 b2 b2 a2 a2 a1 a2 a2
  b2 b2 b2 b2 c'2.\melisma d'4 e'2 \melismaEnd d'2 c'1 r1 c'1 c'2 a2 b2 b2 c'4 \melisma b4 g4 a4 b2 \melismaEnd
  a2 g1 r1 r2 g'1 e'2 e'2 d'2 b2 e'2 g'2 g'2 e'1 d'2 e'1 d'2 b2 b2 g2
  b2 c'2 c'2 \melisma b4 a4 b2 \melismaEnd c'1 r2 c'2 c'2 a2
  b1 c'2 g'2 g'2 fis'2 g'1 g'2 e'2 e'2 d'2 d'1 e'2 c'2 d'1. c'2 c'1 r2
  g'2 g'2 e'2 fis'1 g'2 g'2 a'1. g'2 g'1 r2 d'2 d'1 cis'2 d'2 e'2 b2
  d'1 e'2 e'2 a2 b2 c'2 a2 a1. a2
  r1 r2 d'2 d'1 cis'2 d'2 g2 g2 b1 a2 d'2 e'2 f'2 d'1 e'2 a2 e'2 e'2
  f'1 d'2 d'2. \melisma c'8 b8 c'2 \melismaEnd d'\breve r\breve r2 d'1 d'2 c'1 bes2 a2. \melisma g4 g1 \melismaEnd
  f2 g1 r2 d'1 d'2 e'1
  c'2 d'2 b1 cis'2 cis'1 cis'2 d'2 d'1 f'2 \[ e'1 \melisma d'1 \] \melismaEnd

  d'\breve
  \times 2/3 { fis'1 fis'1 fis'1 } g'\breve
  \times 2/3 { e'1 e'1 e'1 } \times 2/3 {  f'1 a'1 a'1 }
  \times 2/3 { a'1 d'\breve } \times 2/3 {  d'1 d'1 d'1 }
  \times 2/3 { c'1 c'2 c'2 a1 }  d'\breve
  \times 2/3 { fis'1 fis'1 fis'1 } g'\breve
  \times 2/3 { e'1 e'1 e'1 } \times 2/3 { f'1 a'1 a'1 }
  \times 2/3 { a'1 d'\breve } \times 2/3 { d'1 d'1 d'1 }
  \times 2/3 { c'1 e'2 d'2 d'1 } \times 2/3 { d'\breve c'1 }
  \times 2/3 { d'1 c'\breve } b\breve

}
StaveDNotes = { 

  % clef c4  % tweak / uncomment for debugging - this should override the clef in the score block
  r\longa
  r1 g\breve e1 f1. f2 e1 d1 e2 e1 c2 e1 d1 r\breve g\breve a1
  d'1. d2 e2 g1 g2 e2 f2 e1 d2 d2
  g2 g2 g2 d2 e2 e2 g1 r2 a2 g2 g2 f1 f1 d2 g2 c1 r1
  r2 c'1 b2 c'2 c'2 d'2 c'2 c'2 a2 g\breve g1 r2 g1 f2 g2
  d2 e2 e2 c2 c2 g1 c'1 r2 g2 g2 f2
  g1 g2 c'2 c'2 d'2 g1 g2 c'2 c'2 a2 b1 c'2 g2 bes1.
  g2 g1 r2 g2 g2 a2 d1 g2 g2 f1. g2 g1 r\breve r2 g2 g1 fis2
  g4 \melisma f4 e4 d4 c2 \melismaEnd d2 g2 f1 d2 d2 a1
  a2 a1 fis2 g1 e2 f2 \[ e1 d1 \] d2 bes2 a1 r\breve r2 a2 a2 d2
  g1 e2 e2 f2. g4 a2 d'2. d'4 d'2 c'2 b2 a1 g1
  e2. e4 f2 f2 e2 d1 c2 d1 g1. g2 e1
  f2 d2 e1 e2 a1 a2 a1 bes2 a2. g4 g1 f2

  g\breve
  R\longa
  \times 2/3 { g1 g1 g1 } a\breve
  \times 2/3 { a1 a1 a1 } g\breve
  \times 2/3 {g1. a2 fis1 } g\breve
  R\longa
  \times 2/3 {g1 g1 g1 } a\breve
  \times 2/3 { a1 a1 a1 } g\breve
  \times 2/3 { g1. g2 a1 }  g\longa.
}
StaveENotes = { 

  % clef c4  % tweak / uncomment for debugging - this should override the clef in the score block
  g\breve e1 f1. f2 e2 e1 e2 c2 c2 f,2.\melisma
  g,4 a,2. b,4 c1 \melismaEnd g,1 r1 a,\breve b,1 d1. d2 c2 e1 e2 d2 d2 d1 g,1 c2. c4
  g,2 g,2 a,\breve d1
  r1 r2 g,2 c2 c2 c2 g,2 a,2 a,2 c1 r\breve g,1 g2 g2 g2 d2 e2 e2 g1 c1 b,2
  c2 c2 d2 e2 c1 g,2 c2.\melisma b,8 a,8 b,4 g,4 c1 d2 \melismaEnd g,1 r\longa c1 c2 d2

  g,1 c1 r\breve c1 c2 d2 g,1 c2 c2 bes,1. c2 c1 r\longa r\breve r2 g2 g1 fis2 g2
  a2 g2 e1 d2 b,2 c1 r\breve r1 r2 d2
  d1 cis2 d4 \melisma c4 b,4 a,4 g,2 \melismaEnd a,2 d2 c1 g,1 r1 r2 d2 d1 cis2 d2 a,2 a,2
  d1 g,2 g,2 a,1 d1. d2 d1 e2 g2 d1 g,1 c2. c4 d1 c2 b,2 a,1 g,\breve r\breve
  r\breve a,1. a,2 d1 g,2 d2 e2 \melisma c2 d1 \melismaEnd

  g,\breve
  R\breve
  \times 2/3 { g1 g1 g1 } c\breve
  \times 2/3 {f1 f1 f1 } d\breve
  \times 2/3 { g,1 g,1 g,1 } \times 2/3 { c2 c1 a,2 d1 } g,\breve
  R\breve
  \times 2/3 { g1 g1 g1 }   c\breve
  \times 2/3 { f1 f1 f1 } d\breve
  \times 2/3 { g,1 g,1 g,1 } \times 2/3 {  c2 c1 g,2 d1 }
  \times 2/3 { g,\breve c1 } \times 2/3 { b,1 c\breve }
  g,\breve

}
StaveFNotes = {  }
StaveGNotes = {  }
StaveHNotes = {  }

% Convenient overrides - comment and uncomment to add and remove staves for quick debugging / rendering purposes:
% StaveANotes = {  }
% StaveBNotes = {  }
% StaveCNotes = {  }
% StaveDNotes = {  }
% StaveENotes = {  }
% StaveFNotes = {  }
% StaveGNotes = {  }
% StaveHNotes = {  }

%%%%%%%%%%%%%%%%%%
% 4 - Score content: text / lyrics
%%%%%%%%%%%%%%%%%%

StaveALyrics = \lyricmode {  

}
StaveBLyrics = \lyricmode {  

}
StaveCLyrics = \lyricmode {


}
StaveDLyrics = \lyricmode {


}
StaveELyrics = \lyricmode {


}
StaveFLyrics = \lyricmode {

}
StaveGLyrics = \lyricmode { A }
StaveHLyrics = \lyricmode { A }

 % Tanslation and attribution of text
 \markup {
        \vspace #1
	\fill-line {
		\column {
                        \vspace #1
			\line { Prima Pars }
			\line { \italic { Tranlation goes here }}
			\vspace #1
			\line { Secunda Pars}
			\line { \italic { Trahslation goes here }}

			\vspace #1
			\line { Text source goes here }


		}
	}
}


%%%%%%%%%%%%%%%%%%
% 5 - Editorial content, including prefatory stave / incipit settings and notes
%%%%%%%%%%%%%%%%%%

 %  Should very rarely need to be touched once a given piece has been typeset

% 5a Editorial method and comments
\markup {
    \vspace #3
    \column {
          %\wordwrap  { \italic { Music source and editorial comments go here.} }

          \wordwrap  {
              \italic {Andreae Gabrielis Sacrae Cantiones [...], Liber Primus}
              , published Antonio Gardano, Venice 1565;
              acknowledgements to the Bavarian State Library,
              whose website \italic{(http://bildsuche.digitale-sammlungen.de)} contains a scan of the whole publication.
          }
          \vspace #1
          \wordwrap  {
              Barlines are editorial (one bar per \italic {tempus}, ie. breve); 
              ficta, ligature brackets, cautionary and courtesy accidentals are above the stave where applicable. 
              Original note-values have been preserved as far as possible.
              Original mensuration marks are presented rather than imposing modern time signatures.
              Editorial underlay is in italics where applicable;
              Latin spelling has been modernised in places to aid legibility, and punctuation has been
              added.
          }
          \vspace #1
          \wordwrap {
              This is Gabrieli's first published collection of his compositions
              and shows his early style.  1565 is an interesting date as Gabrieli's
              star was just rising in Venice - he had travelled to Munich in 1562,
              befriending Lassus, and then he became organist at S Marco in 1566.
              Quite possibly this collection,  deidcated to Prince Albert, Duke of Bavaria
              and probably at least partially composed while in Munich,
              helped Gabrieli to gain the post.
          }
          \vspace #1
          \wordwrap {
              As suggested on the 1565 title page, instrumental support or substitution
              is optional but worth considering.
	  }
	  \vspace #3
	  .
    }
}

%% 5b - Plainsong incipit - obviously, comment out as required.
%\score   {
%    \transpose c \TranspositionInterval <<
%          \new Staff \with { \remove "Time_signature_engraver" \remove "Ambitus_engraver" } {
%                \set Staff.instrumentName = "Intonation"
%                \clef "treble_8"  \global  \cadenzaOn              <<  {
%                          \override Voice.Slur #'tran%sparent = ##f
%                          f4 s8 f4 s8 f4( g4) s8 g4.
%                      }\addlyrics {  In -- ci -- pit here. }
%               >>
%          }
%     >>
%    \layout {\context { \Voice \remove "Stem_engraver" } }
%}


% 5c - Prefatory staves
\layout {   % Need to modify a couple of settings in the main score layout as well
             indent=4\cm
              \context { \Staff
                         \override InstrumentName #'padding = 2
                         \override InstrumentName #'self-alignment-X = #RIGHT
              }
}
PrefatorySettings = {
  		%\override NoteHead   #'style = #'neomensural      % ie. can set to either Mensural or Neomensural
		%\override Rest #'style = #'neomensural
		%\override Staff.TimeSignature #'style = #'neomensural
                \override Flag #'style = #'mensural
                \autoBeamOff
                 \override Staff.InstrumentName #'Y-extent = #'(-4 . 4)
                 \override Staff.InstrumentName #'self-alignment-X = #RIGHT
                \override Staff.InstrumentName #'padding = 2
                % Uncomment these if you want eg. double b flat in key sig using c2 or f3 clef etc
                % May also have to tweak the numbers (4 vs 5 etc)
                \override Staff.KeySignature.flat-positions = #'((-4 . 4))
                \override Staff.KeySignature.sharp-positions = #'((-4 . 4))
                \cadenzaOn
                \key f \major
		\time 2/2
                \huge
}
PrefatoryLayout = \layout {   % Set the layout inside the incipit
		\context {\Voice
			\remove Ligature_bracket_engraver
			\consists Mensural_ligature_engraver

		}
                \context { \Staff \remove Ambitus_engraver}
		line-width=5
                indent =  0
                ragged-right = ##f
		ragged-last = ##f
                system-count = #1
}
PrefStaveA = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveALabel
                    \PrefatorySettings
                    \clef "petrucci-c1"
                    g'1
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveB = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveBLabel
                    \PrefatorySettings
                    \clef "petrucci-c3"
                    g1
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveC = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveCLabel
                    \PrefatorySettings
                    \clef "petrucci-c4"
                    d2
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveD = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveDLabel
                    \PrefatorySettings
                    \clef "petrucci-c4"
                    g2
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveE = \markup {
	\score {
          \new MensuralVoice {
                    \set Staff.instrumentName=\StaveELabel
                    \PrefatorySettings
                    \clef "petrucci-f4"
                    g,1
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveF = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveFLabel
                    \PrefatorySettings
                    \clef "petrucci-f4"
                    g2
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveG = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveGLabel
                    \PrefatorySettings
                    \clef "petrucci-f4"
                    g2
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveH = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveHLabel
                    \PrefatorySettings
                    \clef "petrucci-f4"
                    f2
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}





\version "2.18"