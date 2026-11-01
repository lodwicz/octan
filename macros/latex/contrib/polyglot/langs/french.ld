% Copyright 1997 Javier Bezos-L\'opez. All rights reserved.
% 
% This file is part of the polyglot system release 1.1.
% --------------------------------------------------
%
% This program can be redistributed and/or modified under the terms
% of the LaTeX Project Public License Distributed from CTAN
% archives in directory macros/latex/base/lppl.txt; either
% version 1 of the License, or any later version.

\ProvidesFile{french.ld}[1997/04/15 v1.0]
\DeclareLanguage{french}

\DeclareLanguageCommand{\prefacename}{names}
  {Pr\'eface}
\DeclareLanguageCommand{\refname}{names}
  {R\'ef\'erences}
\DeclareLanguageCommand{\abstractname}{names}
  {R\'esum\'e}
\DeclareLanguageCommand{\bibname}{names}
  {Bibliographie}
\DeclareLanguageCommand{\chaptername}{names}
  {Chapitre}
\DeclareLanguageCommand{\appendixname}{names}
  {Annexe}
\DeclareLanguageCommand{\contentsname}{names}
  {Table des mati\`eres}
\DeclareLanguageCommand{\listfigurename}{names}
  {Liste des figures}
\DeclareLanguageCommand{\listtablename}{names}
  {Liste des tableaux}
\DeclareLanguageCommand{\indexname}{names}
  {Index}
\DeclareLanguageCommand{\figurename}{names}
  {Figure}
\DeclareLanguageCommand{\tablename}{names}
  {Tableau}
\DeclareLanguageCommand{\partname}{names}
  {Partie}
\DeclareLanguageCommand{\enclname}{names}
  {P.~J.}
\DeclareLanguageCommand{\ccname}{names}
  {Copie \`a}
\DeclareLanguageCommand{\headtoname}{names}
  {A}
\DeclareLanguageCommand{\pagename}{names}
  {Page}
\DeclareLanguageCommand{\seename}{names}
  {voir}
\DeclareLanguageCommand{\alsoname}{names}
  {voir aussi}

% Date
% ~~~~

\DeclareDateFunction{wwww}{\ifcase\weekday\or dimanche\or
  lundi\or mardi\or mercredi\or jeudi\or vendredi\or samedi\fi}

\DeclareDateFunction{mmmm}{%
  \ifcase\month\or janvier\or f\'evrier\or mars\or avril\or
  mai\or juin\or juillet\or ao\^ut\or septembre\or octobre\or
  novembre\or d\'ecembre\fi}

\DeclareDateFunction{ddd}{%
  \ifnum\day=\@ne 1\protect\french@sptext{er}\else\the\day\fi}

\DeclareDateCommand{\today}{<ddd> <mmmm> <yyyy>}

% Spacing
% ~~~~~~~

\DeclareLanguageSymbolCommand{;}{text}
  {\unskip\penalty\@M\,;}
\DeclareLanguageSymbolCommand{:}{text}
  {\unskip\penalty\@M\,:}
\DeclareLanguageSymbolCommand{?}{text}
  {\unskip\penalty\@M\,?}
\DeclareLanguageSymbolCommand{!}{text}
  {\unskip\penalty\@M\,!}

% Ligatures
% ~~~~~~~~~

\DeclareLigatureCommand{<}{<}{\guillemotleft\,\ignorespaces}
\DeclareLigatureCommand{>}{>}{\unskip\,\guillemotright}

\DeclareLigatureCommand{"}{e}{\"e} % As in Saint-Sa"ens
\DeclareLigatureCommand{"}{y}{\"y} % As in Ysa"ye

\DeclareLigatureCommand{"}{o}{\oe\@gobble}
\DeclareLigatureCommand{"}{a}{\ae\@gobble}

\DeclareLigatureCommand{^}{a}{\^a}
\DeclareLigatureCommand{^}{e}{\^e}
\DeclareLigatureCommand{^}{i}{\^\i}
\DeclareLigatureCommand{^}{o}{\^o}
\DeclareLigatureCommand{^}{u}{\^u}

\DeclareLigatureCommand{`}{a}{\@tabacckludge`a}
\DeclareLigatureCommand{`}{e}{\@tabacckludge`e}
\DeclareLigatureCommand{`}{u}{\@tabacckludge`u}

\DeclareLigatureCommand{'}{e}{\@tabacckludge'e}

\DeclareLigatureCommand{/}{c}{\c{c}}

\DeclareLigatureCommand{"}{E}{\"E}
\DeclareLigatureCommand{"}{Y}{\"Y}

\DeclareLigatureCommand{"}{O}{\OE\@gobble}
\DeclareLigatureCommand{"}{A}{\AE\@gobble}

\DeclareLigatureCommand{^}{A}{\^A}
\DeclareLigatureCommand{^}{E}{\^E}
\DeclareLigatureCommand{^}{I}{\^I}
\DeclareLigatureCommand{^}{O}{\^O}
\DeclareLigatureCommand{^}{U}{\^U}

\DeclareLigatureCommand{`}{A}{\@tabacckludge`A}
\DeclareLigatureCommand{`}{E}{\@tabacckludge`E}
\DeclareLigatureCommand{`}{U}{\@tabacckludge`U}

\DeclareLigatureCommand{'}{E}{\@tabacckludge'E}

\DeclareLigatureCommand{/}{C}{\c{C}}

% Layout
% ~~~~~~

\DeclareLanguageCommand{\labelitemi}{layout}{--}
\DeclareLanguageCommand{\labelitemii}{layout}{--}
\DeclareLanguageCommand{\labelitemiii}{layout}{--}
\DeclareLanguageCommand{\labelitemiv}{layout}{--}

\DeclareLanguageCommand{\@afterindentfalse}{layout}{}

% French ordinals
% ~~~~~~~~~~~~~~~

\DeclareLanguageCommand{\sptext}{tools}{\protect\french@sptext}

\newcommand\french@sptext[1]{%
    {\setbox\z@\hbox{8}\@tempdima\ht\z@
     \csname S@\f@size\endcsname
    \edef\@tempa{\def\noexpand\@tempc{#1}%
       \lowercase{\def\noexpand\@tempb{#1}}}\@tempa
    \ifx\@tempb\@tempc\fontsize\sf@size\z@\selectfont
      \advance\@tempdima-1.2ex
    \else\fontsize\ssf@size\z@\selectfont
      \advance\@tempdima-1.6ex\fi
    \math@fontsfalse\raise\@tempdima\hbox{#1}}}

% frenchspacing
% ~~~~~~~~~~~~~

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
