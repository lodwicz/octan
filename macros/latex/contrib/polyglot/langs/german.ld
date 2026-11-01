% Copyright 1997 Javier Bezos-L\'opez. All rights reserved.
% 
% This file is part of the polyglot system release 1.1.
% --------------------------------------------------
%
% This program can be redistributed and/or modified under the terms
% of the LaTeX Project Public License Distributed from CTAN
% archives in directory macros/latex/base/lppl.txt; either
% version 1 of the License, or any later version.

\ProvidesFile{german.ld}[1997/09/1 v1.0.1]

\DeclareLanguage{german}
\DeclareDialect{austrian}

\DeclareLanguageCommand{\prefacename}{names}
  {Vorwort}
\DeclareLanguageCommand{\refname}{names}
  {Literatur}
\DeclareLanguageCommand{\abstractname}{names}
  {Zusammenfassung}
\DeclareLanguageCommand{\bibname}{names}
  {Literaturverzeichnis}
\DeclareLanguageCommand{\chaptername}{names}
  {Kapitel}
\DeclareLanguageCommand{\appendixname}{names}
  {Anhang}
\DeclareLanguageCommand{\contentsname}{names}
  {Inhaltsverzeichnis}   
\DeclareLanguageCommand{\listfigurename}{names}
  {Abbildungsverzeichnis}
\DeclareLanguageCommand{\listtablename}{names}
  {Tabellenverzeichnis}
\DeclareLanguageCommand{\indexname}{names}
  {Index}
\DeclareLanguageCommand{\figurename}{names}
  {Abbildung}
\DeclareLanguageCommand{\tablename}{names}
  {Tabelle}   
\DeclareLanguageCommand{\partname}{names}
  {Teil}
\DeclareLanguageCommand{\enclname}{names}
  {Anlage(n)}   
\DeclareLanguageCommand{\ccname}{names}
  {Verteiler}    
\DeclareLanguageCommand{\headtoname}{names}
  {An}
\DeclareLanguageCommand{\pagename}{names}
  {Seite}
\DeclareLanguageCommand{\seename}{names}
  {siehe}
\DeclareLanguageCommand{\alsoname}{names}
  {siehe auch}

\DeclareLigatureCommand{"}{a}{\"a}
\DeclareLigatureCommand{"}{o}{\"o}
\DeclareLigatureCommand{"}{u}{\"u}
\DeclareLigatureCommand{"}{A}{\"A}
\DeclareLigatureCommand{"}{O}{\"O}
\DeclareLigatureCommand{"}{U}{\"U}

\DeclareLigatureCommand{"}{e}{\"e}
\DeclareLigatureCommand{"}{E}{\"E}
\DeclareLigatureCommand{"}{i}{\"\i}
\DeclareLigatureCommand{"}{I}{\"I}

\DeclareLigatureCommand{"}{s}{\ss}
\DeclareLigatureCommand{"}{S}{SS}

\DeclareLigatureCommand{"}{<}{\guillemotright}
\DeclareLigatureCommand{"}{>}{\guillemotleft}

\DeclareLigatureCommand{"}{`}{\quotedblbase}
\DeclareLigatureCommand{"}{'}{``}

\def\german@discretionary#1{\allowhyphens
  \discretionary{#1#1-}{}{#1}\allowhyphens}

\DeclareLigatureCommand{"}{c}%
  {\allowhyphens\discretionary{k-}{}{c}\allowhyphens}
\DeclareLigatureCommand{"}{C}%
  {\allowhyphens\discretionary{K-}{}{C}\allowhyphens}
\DeclareLigatureCommand{"}{f}{\german@discretionary f}
\DeclareLigatureCommand{"}{F}{\german@discretionary F}
\DeclareLigatureCommand{"}{l}{\german@discretionary l}
\DeclareLigatureCommand{"}{L}{\german@discretionary L}
\DeclareLigatureCommand{"}{m}{\german@discretionary m}
\DeclareLigatureCommand{"}{M}{\german@discretionary M}
\DeclareLigatureCommand{"}{n}{\german@discretionary n}
\DeclareLigatureCommand{"}{N}{\german@discretionary N}
\DeclareLigatureCommand{"}{p}{\german@discretionary p}
\DeclareLigatureCommand{"}{P}{\german@discretionary P}
\DeclareLigatureCommand{"}{t}{\german@discretionary t}
\DeclareLigatureCommand{"}{T}{\german@discretionary T}

\DeclareLigatureCommand{"}{-}{\allowhyphens\-\allowhyphens}
\DeclareLigatureCommand{"}{|}{\discretionary{-}{}{\kern.03em}}
\DeclareLigatureCommand{"}{"}{\hskip\z@skip}

% Date

\DeclareDateFunction{www}{\ifcase\weekday\or So.\or Mo.\or Di.\or
  Mi.\or Do.\or Fr.\or Sa.\fi\@}

\DeclareDateFunction{wwww}{\ifcase\weekday\or Sonntag\or Montag\or
  Dienstag\or  Mittwoch\or Donnerstag\or Freitag\or Samstag\fi}

\SetDialect{german}

\DeclareDateFunction{mmm}%
  {\ifcase\month\or
   Jan.\or Febr.\or M\"arz\or Apr.\or Mai\or Juni\or
   Juli\or Aug.\or Sept.\or Okt.\or Nov.\or Dez.\fi\@}

\DeclareDateFunction{mmmm}%
  {\ifcase\month\or
   Januar\or Februar\or M\"arz\or April\or Mai\or Juni\or
   Juli\or August\or September\or Oktober\or November\or Dezember\fi}

\SetDialect{austrian}

\DeclareDateFunction{mmm}%
  {\ifcase\month\or
   J\"an.\or Febr.\or M\"arz\or Apr.\or Mai\or Juni\or
   Juli\or Aug.\or Sept.\or Okt.\or Nov.\or Dez.\fi\@}

\DeclareDateFunction{mmmm}%
  {\ifcase\month\or
   J\"anner\or Februar\or M\"arz\or April\or Mai\or Juni\or
   Juli\or August\or September\or Oktober\or November\or Dezember\fi}
   
\SetLanguage{german}

\DeclareDateCommand{\today}{<d>.~<mmmm> <yyyy>}

%%
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
\endinput
