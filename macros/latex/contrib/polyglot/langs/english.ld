% Copyright 1997 Javier Bezos-L\'opez. All rights reserved.
% 
% This file is part of the polyglot system release 1.1.
% --------------------------------------------------
%
% This program can be redistributed and/or modified under the terms
% of the LaTeX Project Public License Distributed from CTAN
% archives in directory macros/latex/base/lppl.txt; either
% version 1 of the License, or any later version.

\ProvidesFile{english.ld}[1997/09/01 v1.0.1]

\DeclareLanguage{english}
\DeclareDialect{american}

\DeclareLanguageCommand{\partname}{names}
  {Part}
\DeclareLanguageCommand{\contentsname}{names}
  {Contents}
\DeclareLanguageCommand{\listfigurename}{names}
  {List of Figures}
\DeclareLanguageCommand{\listtablename}{names}
  {List of Tables}
\DeclareLanguageCommand{\bibname}{names}
  {Bibliography}
\DeclareLanguageCommand{\indexname}{names}
  {Index}
\DeclareLanguageCommand{\figurename}{names}
  {Figure}
\DeclareLanguageCommand{\tablename}{names}
  {Table}
\DeclareLanguageCommand{\refname}{names}
  {References}
\DeclareLanguageCommand{\abstractname}{names}
  {Abstract}
\DeclareLanguageCommand{\chaptername}{names}
  {Chapter}
\DeclareLanguageCommand{\appendixname}{names}
  {Appendix}
\DeclareLanguageCommand{\enclname}{names}
  {encl}
\DeclareLanguageCommand{\ccname}{names}
  {cc}
\DeclareLanguageCommand{\pagename}{names}
  {Page}
\DeclareLanguageCommand{\headtoname}{names}
  {To}
\DeclareLanguageCommand{\seename}{names}
  {see}

% date
% ~~~~

\DeclareDateFunction{ddd}{\english@arabicth{day}}

\DeclareDateFunction{mmm}{\ifcase\month\or Jan.\or Feb.\or
  Mar.\or Abr.\or May\or Jun.\or Jul.\or Aug.\or Sep.\or Oct.\or
  Nov.\or Dic.\fi\@}

\DeclareDateFunction{mmmm}{\ifcase\month\or
    January\or February\or March\or April\or May\or June\or
    July\or August\or September\or October\or November\or December\fi}%

\DeclareDateFunction{www}{\ifcase\month\or Sun.\or Mon.\or
  Tue.\or Wes.\or Thu.\or Fri.\or Sat.\fi\@}

\DeclareDateFunction{wwww}{\ifcase\month\or Sunday\or Monday\or
  Tuesday\or Wesnesday\or Thursday\or Friday\or Saturday\fi}

% Continued below

% ordinal numbers
% ~~~~~~~~~~~~~~~

\newif\ifenglish@orddec

\DeclareLanguageCommand{\arabicth}{tools}{\protect\english@arabicth}

\newcommand\english@arabicth[1]{% 
   \expandafter\english@@arabicth\csname c@#1\endcsname}

\newcommand\english@@arabicth[1]{%
  \expandafter\english@@@arabicth\number#1\relax\@nil}%

\def\english@@@arabicth#1#2\@nil{\def\@tempa{#1}\def\@tempb{#2}%
  \def\@tempc{\relax}#1\relax
  \ifx\@tempb\@tempc\ifenglish@orddec th\else
    \ifcase#1th\or st\or nd\or rd\else th\fi\fi
    \else\ifnum0#1=1\relax\english@orddectrue
  \else\english@orddecfalse\fi
  \expandafter\english@@@arabicth#2\@nil\fi}%

\SetDialect{english}

\DeclareDateCommand{\today}{<ddd> <mmmm> <yyyy>}

\SetDialect{american}

\DeclareDateCommand{\today}{<mmmm> <d>, <yyyy>}

\endinput
