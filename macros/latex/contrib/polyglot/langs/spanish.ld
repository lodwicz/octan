% Copyright 1997 Javier Bezos-L\'opez. All rights reserved.
% 
% This file is part of the polyglot system release 1.1.
% --------------------------------------------------
%
% This program can be redistributed and/or modified under the terms
% of the LaTeX Project Public License Distributed from CTAN
% archives in directory macros/latex/base/lppl.txt; either
% version 1 of the License, or any later version.

\ProvidesFile{spanish.ld}[1997/04/15 v1.0]
\DeclareLanguage{spanish}

\DeclareLanguageCommand{\partname}{names}{Parte}
% In rare cases Libro is better
\DeclareLanguageCommand{\contentsname}{names}{\'Indice general}
% Tabla de contenidos is bad, Indice general is good
% Capitalized titles IS NOT the Spanish norm!
\DeclareLanguageCommand{\listfigurename}{names}
  {\'Indice de figuras}
\DeclareLanguageCommand{\listtablename}{names}
  {\'Indice de cuadros}
\DeclareLanguageCommand{\bibname}{names}{Bibliograf\'ia}
\DeclareLanguageCommand{\indexname}{names}
  {\'Indice anal\'itico}
\DeclareLanguageCommand{\figurename}{names}{Figura}
\DeclareLanguageCommand{\tablename}{names}{Cuadro}
% Tabla is not bad, but Cuadro is better
\DeclareLanguageCommand{\refname}{names}
  {Referencias bibliogr\'aficas}
\DeclareLanguageCommand{\abstractname}{names}{Resumen}
\DeclareLanguageCommand{\chaptername}{names}{Cap\'itulo}
\DeclareLanguageCommand{\appendixname}{names}{Ap\'endice}
\DeclareLanguageCommand{\enclname}{names}{Adjunto}
\DeclareLanguageCommand{\ccname}{names}{Copia a}
\DeclareLanguageCommand{\pagename}{names}{P\'agina}
\DeclareLanguageCommand{\headtoname}{names}{A}
\DeclareLanguageCommand{\subjectname}{names}{Asunto}
\DeclareLanguageCommand{\seename}{names}{v\'ease}
% Perhaps is preferable `v.'


% date
% ~~~~

\DeclareDateFunction{www}{%
  \ifcase\weekday\or lun.\or mart.\or mcles.\or jves.\or
         vnes.\or S\@tabacckludge'ab.\or Dom.\fi\@}

\DeclareDateFunction{wwww}{%
  \ifcase\weekday\or lunes\or martes\or mi\@tabacckludge'ercoles\or jueves\or
         viernes\or s\@tabacckludge'abado\or domingo\fi}

\DeclareDateFunction{mmm}{%
   \ifcase\month\or en.\or feb.\or mzo.\or abr.\or
    mayo\or jun.\or jul.\or ag.\or sept.\or oct.\or nov.\or dic.\fi\@}

\DeclareDateFunction{mmmm}{\ifcase\month\or enero\or febrero\or
  marzo\or abril\or mayo\or junio\or julio\or agosto\or septiembre\or
  octubre\or noviembre\or diciembre\fi}

\DeclareDateCommand{\today}{<d> de <mmmm> de <yyyy>}

% math
% ~~~~

\DeclareLanguageGroup{math}

% This part requires adaptation to LaTeX2e

\DeclareLanguageCommand{\lim}{math}
  {\mathop{\hbox{\rm l\@tabacckludge'\i m}}\limits}%
\DeclareLanguageCommand{\max}{math}
  {\mathop{\rm m\acute ax}}%
\DeclareLanguageCommand{\sen}{math}
  {\mathop{\rm sen}\nolimits}%
\DeclareLanguageCommand{\arcsen}{math}
  {\mathop{\rm arc\,sen}\nolimits}%
\DeclareLanguageCommand{\senh}{math}
  {\mathop{\rm senh}\nolimits}%
\DeclareLanguageCommand{\arccos}{math}
  {\mathop{\rm arc\,cos}\nolimits}%
\DeclareLanguageCommand{\tg}{math}
  {\mathop{\rm tg}\nolimits}%
\DeclareLanguageCommand{\arctg}{math}
  {\mathop{\rm arc\,tg}\nolimits}%
\DeclareLanguageCommand{\tgh}{math}
  {\mathop{\rm tgh}\nolimits}%
\DeclareLanguageCommand{\cotg}{math}
  {\mathop{\rm cot}\nolimits}%
\DeclareLanguageCommand{\cotgh}{math}
  {\mathop{\rm coth}\nolimits}%
\DeclareLanguageCommand{\cosec}{math}
  {\mathop{\rm cosec}\nolimits}%


% \roman not allowed in Spanish. enumerate changed
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% labels are: 1.   a)   1)   a'); references are 1, a, 1, a'.
% The main problem is that enumeration depends on the number of levels,
% v.g. with 1 level: a); with 2: 1.  a); with 3: A. 1. a), etc.
% Use of . and ) also depends on the length of items.
% So a mixed style is used.

\DeclareLanguageCommand{\labelenumi}{layout}
  {\theenumi.\enspace}
\DeclareLanguageCommand{\theenumi}{layout}
  {\arabic{enumi}}%

\DeclareLanguageCommand{\labelenumii}{layout}
  {\theenumii)\enspace}
\DeclareLanguageCommand{\theenumii}{layout}
  {\emph{\alph{enumii}}}
\DeclareLanguageCommand{\p@enumii}{layout}
  {\theenumi, }

\DeclareLanguageCommand{\labelenumiii}{layout}{\theenumiii)\enspace}
\DeclareLanguageCommand{\theenumiii}{layout}{\arabic{enumiii}}
\DeclareLanguageCommand{\p@enumiii}{layout}{\theenumi, \theenumii, }

\DeclareLanguageCommand{\labelenumiv}{layout}
  {\theenumiv)\enspace}
\DeclareLanguageCommand{\theenumiv}{layout}
  {\emph{\alph{enumiv}}$'$}
\DeclareLanguageCommand{\p@enumiv}{layout}
  {\p@enumiii\theenumiii, }

\DeclareLanguageCommand{\labelitemi}{layout}{---}
\DeclareLanguageCommand{\labelitemii}{layout}{---}
\DeclareLanguageCommand{\labelitemiii}{layout}{---}
\DeclareLanguageCommand{\labelitemiv}{layout}{---}

\SetLanguageVariable{\leftmargin}{layout}{2.6em}
\SetLanguageVariable{\leftmargini}{layout}{2.6em}
\SetLanguageVariable{\leftmarginii}{layout}{2em}
\SetLanguageVariable{\leftmarginiii}{layout}{2em}
\SetLanguageVariable{\leftmarginiv}{layout}{2em}

% \fnsymbol and alpha
% ~~~~~~~~~~~~~~~~~~

\DeclareLanguageCommand{\@fnsymbol}{layout}[1]%
  {\ifcase#1\or*\or**\or*{*}*\or*{**}*\or{**}*{**}\or\@ctrerr\fi}

\DeclareLanguageCommand{\@alph}{layout}[1]%
  {\ifcase#1\or a\or b\or c\or d\or e\or f\or g\or h\or i\or j\or
   k\or l\or m\or n\or \~n \or o\or p\or q\or r\or s\or t\or u\or v\or
   w\or x\or y\or z\else\@ctrerr\fi}

% spanish ordinals
% ~~~~~~~~~~~~~~~~

\DeclareLanguageCommand{\sptext}{tools}{\protect\spanish@sptext}

\newcommand\spanish@sptext[1]{%
    {\setbox\z@\hbox{8}\@tempdima\ht\z@
     \csname S@\f@size\endcsname
    \edef\@tempa{\def\noexpand\@tempc{#1}%
       \lowercase{\def\noexpand\@tempb{#1}}}\@tempa
    \ifx\@tempb\@tempc\fontsize\sf@size\z@\selectfont
      \advance\@tempdima-1.1ex
    \else\fontsize\ssf@size\z@\selectfont
      \advance\@tempdima-1.5ex\fi
    \math@fontsfalse.\raise\@tempdima\hbox{#1}}}

% Ligatures
% ~~~~~~~~~

\DeclareLigatureCommand{'}{a}{\@tabacckludge'a}
\DeclareLigatureCommand{'}{A}{\@tabacckludge'A}
\DeclareLigatureCommand{'}{e}{\@tabacckludge'e}
\DeclareLigatureCommand{'}{E}{\@tabacckludge'E}
\DeclareLigatureCommand{'}{i}{\@tabacckludge'\i}
\DeclareLigatureCommand{'}{I}{\@tabacckludge'I}
\DeclareLigatureCommand{'}{o}{\@tabacckludge'o}
\DeclareLigatureCommand{'}{O}{\@tabacckludge'O}
\DeclareLigatureCommand{'}{u}{\@tabacckludge'u}
\DeclareLigatureCommand{'}{U}{\@tabacckludge'U}

\DeclareLigatureCommand{'}{n}{\~n}
\DeclareLigatureCommand{'}{N}{\~N}

% Old Castilian has \c c

\DeclareLigatureCommand{'}{c}{\c c}
\DeclareLigatureCommand{'}{C}{\c C}

\DeclareLigatureCommand{>}{>}{\guillemotright}
\DeclareLigatureCommand{<}{<}{\guillemotleft}

\DeclareLigatureCommand{'}{r}%
     {\allowhyphens\discretionary{-}{}{r}\allowhyphens}
\DeclareLigatureCommand{'}{-}%
     {\allowhyphens-\allowhyphens}
\DeclareLigatureCommand{'}{|}{\hskip\z@skip}

\DeclareLigatureCommand{~}{n}{\~n}
\DeclareLigatureCommand{~}{N}{\~N}

\DeclareLigatureCommand{"}{u}{\"u}
\DeclareLigatureCommand{"}{U}{\"U}

% misc
% ~~~~
% The following command is tricky but shows how to handle
% the case when we redefine a command which uses the
% old definition. The first solution would be
% \begin{verbatim}
% \let\spanish@dot\.
% \end{verbatim}
% at this point, but perhaps you -or some package- have (or
% is to) redefined it.
% So, since the old value is stored in
% \verb=\lang-spanish-\.=, the right solution is:

\DeclareLanguageCommand{\.}{tools}{%
   \@ifnextchar.{\spanish@dots}{\csname lang-spanish-\string\.\endcsname}}

\def\spanish@dots..{\hbox{...}\@}

\DeclareLanguageTextCommand{\%}?%
  {\unskip\,\char"25\relax}

% Now, the french spacing

\SetLanguageCode{\sfcode}{text}{`.}{\@m}
\SetLanguageCode{\sfcode}{text}{`,}{\@m}
\SetLanguageCode{\sfcode}{text}{`:}{\@m}
\SetLanguageCode{\sfcode}{text}{`!}{\@m}
\SetLanguageCode{\sfcode}{text}{`?}{\@m}
\SetLanguageCode{\sfcode}{text}{`;}{\@m}

\endinput

%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
