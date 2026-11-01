% Copyright 1997 Javier Bezos-L\'opez. All rights reserved.
% 
% This file is part of the polyglot system release 1.1.
% --------------------------------------------------
%
% This program can be redistributed and/or modified under the terms
% of the LaTeX Project Public License Distributed from CTAN
% archives in directory macros/latex/base/lppl.txt; either
% version 1 of the License, or any later version.

\ProvidesFile{hebrew.ld}[1997/09/01 v1.0.1]
\DeclareLanguage{hebrew}

\edef\@tempb{%
 \catcode`\noexpand\^^A=\the\catcode`\^^A
 \catcode`\noexpand\^^B=\the\catcode`\^^B
 \catcode`\noexpand\^^C=\the\catcode`\^^C
 \catcode`\noexpand\^^D=\the\catcode`\^^D}

\catcode`\^^A=13\catcode`\^^B=13
\catcode`\^^C=13\catcode`\^^D=13

\DeclareLigatureCommand{.}{a}{\d{a}}
\DeclareLigatureCommand{.}{e}{\k{e}}
\DeclareLigatureCommand{.}{o}{\d{o}}

\DeclareLigatureCommand{.}{h}{\d{h}}
\DeclareLigatureCommand{.}{t}{\d{t}}

\DeclareLigatureCommand{^}{e}{\^e}
\DeclareLigatureCommand{^}{i}{\^\i}
\DeclareLigatureCommand{^}{o}{\^o}
\DeclareLigatureCommand{^}{u}{\^u}
\DeclareLigatureCommand{^}{.}{^^B}

\DeclareLigatureCommand{^^B}{e}{\k{\^{e}}}

\DeclareLigatureCommand{^}{s}{\v{s}}

\DeclareLigatureCommand{'}{a}{\u{a}}
\DeclareLigatureCommand{'}{e}{\u{e}}
\DeclareLigatureCommand{'}{o}{\u{o}}
\DeclareLigatureCommand{'}{.}{^^A}

\DeclareLigatureCommand{^^A}{e}{\k{\u{e}}}

\DeclareLigatureCommand{'}{s}{\@tabacckludge's}

\DeclareLanguageTextCommand{\texthamza}?%
  {{\fontfamily{cmtt}\selectfont\kern-.1em'\kern-.1em}}
\DeclareLigatureCommand{'}{'}{\texthamza}

\DeclareLanguageTextCommand{\textayn}?%
  {{\fontfamily{cmtt}\selectfont\kern-.1em`\kern-.1em}}
\DeclareLanguageSymbolCommand{`}{ligatures}{\textayn}

\DeclareLigatureCommand{-}{a}{\@tabacckludge={a}}
\DeclareLigatureCommand{-}{e}{\@tabacckludge={e}}
\DeclareLigatureCommand{-}{i}{\@tabacckludge={\i}}
\DeclareLigatureCommand{-}{o}{\@tabacckludge={o}}
\DeclareLigatureCommand{-}{u}{\@tabacckludge={u}}
\DeclareLigatureCommand{-}{.}{^^C}

\DeclareLigatureCommand{^^C}{e}{\k{\@tabacckludge={e}}}
\DeclareLigatureCommand{^^C}{a}{\d{\@tabacckludge={a}}}
\DeclareLigatureCommand{^^C}{o}{\d{\@tabacckludge={o}}}

\DeclareLigatureCommand{-}{b}{\b{b}}
\DeclareLigatureCommand{-}{g}{\@tabacckludge={g}}
\DeclareLigatureCommand{-}{d}{\b{d}}
\DeclareLigatureCommand{-}{k}{\b{k}}
\DeclareLigatureCommand{-}{z}{\b{z}}
\DeclareLigatureCommand{-}{t}{\b{t}}
\DeclareLigatureCommand{-}{p}{\@tabacckludge={p}}
\DeclareLigatureCommand{-}{-}{-}

\DeclareLigatureCommand{"}{a}{\"{a}}
\DeclareLigatureCommand{"}{e}{\"{e}}
\DeclareLigatureCommand{"}{i}{\"{\i}}
\DeclareLigatureCommand{"}{o}{\"{o}}
\DeclareLigatureCommand{"}{u}{\"{u}}
\DeclareLigatureCommand{"}{.}{^^D}

\DeclareLigatureCommand{^^D}{e}{\k{\"{e}}}
\DeclareLigatureCommand{^^D}{a}{\d{\"{a}}}
\DeclareLigatureCommand{^^D}{o}{\d{\"{o}}}

% Uppercase

\DeclareLigatureCommand{.}{A}{\d{A}}
\DeclareLigatureCommand{.}{E}{\k{E}}
\DeclareLigatureCommand{.}{O}{\d{O}}

\DeclareLigatureCommand{.}{H}{\d{H}}
\DeclareLigatureCommand{.}{T}{\d{T}}

\DeclareLigatureCommand{^}{E}{\^E}
\DeclareLigatureCommand{^}{I}{\^I}
\DeclareLigatureCommand{^}{O}{\^O}
\DeclareLigatureCommand{^}{U}{\^U}

\DeclareLigatureCommand{^^B}{E}{\k{\^{E}}}

\DeclareLigatureCommand{^}{S}{\v{S}}

\DeclareLigatureCommand{'}{A}{\u{A}}
\DeclareLigatureCommand{'}{E}{\u{E}}
\DeclareLigatureCommand{'}{O}{\u{O}}

\DeclareLigatureCommand{^^A}{E}{\k{\u{E}}}

\DeclareLigatureCommand{'}{S}{\@tabacckludge'S}

\DeclareLigatureCommand{-}{A}{\@tabacckludge={A}}
\DeclareLigatureCommand{-}{E}{\@tabacckludge={E}}
\DeclareLigatureCommand{-}{I}{\@tabacckludge={I}}
\DeclareLigatureCommand{-}{O}{\@tabacckludge={O}}
\DeclareLigatureCommand{-}{U}{\@tabacckludge={U}}

\DeclareLigatureCommand{^^C}{E}{\k{\@tabacckludge={E}}}
\DeclareLigatureCommand{^^C}{A}{\d{\@tabacckludge={A}}}
\DeclareLigatureCommand{^^C}{O}{\d{\@tabacckludge={O}}}

\DeclareLigatureCommand{-}{B}{\b{B}}
\DeclareLigatureCommand{-}{G}{\@tabacckludge={G}}
\DeclareLigatureCommand{-}{D}{\b{D}}
\DeclareLigatureCommand{-}{K}{\b{K}}
\DeclareLigatureCommand{-}{Z}{\b{Z}}
\DeclareLigatureCommand{-}{T}{\b{T}}
\DeclareLigatureCommand{-}{P}{\@tabacckludge={P}}

\DeclareLigatureCommand{"}{A}{\"{A}}
\DeclareLigatureCommand{"}{E}{\"{E}}
\DeclareLigatureCommand{"}{I}{\"{I}}
\DeclareLigatureCommand{"}{O}{\"{O}}
\DeclareLigatureCommand{"}{U}{\"{U}}

\DeclareLigatureCommand{^^D}{E}{\k{\"{E}}}
\DeclareLigatureCommand{^^D}{A}{\d{\"{A}}}
\DeclareLigatureCommand{^^D}{O}{\d{\"{O}}}

\@tempb

\endinput

