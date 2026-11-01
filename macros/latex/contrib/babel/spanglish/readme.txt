
\section{Spanglish}

The \textsf{Spanglish} ``language'' is a compromise between the use of the 
Spanish language in writing and English mathematics. 

Thus, there are no Spanish mathematical features supported (no accented 
operators, no decimal comma), and there is (probably less than) minimal 
Spanish language support for text. 
There is a conscious effort to make this ``language'' upwards compatible with 
the ``standard'' Spanish language definition, so the shorthands implemented here 
are but a very narrow subset of the standard Spanish language: 
those strictly necessary to handle Spanish hyphenation properly, 
and a few extras to straighten the text a little in a Spanish layout and support
plain ASCII input in LaTeX, like frenchspacing, indentfirst, 
symbolic footnotes, lowercase roman numerals, 
and a few shorthands to improve hyphenation. 
All other typographic decisions are left to other macro packages 
according to user's taste (or lack thereof).
So, in a sense, this ``language'' is a very stripped down or ultra-sloppy 
version of the ``standard'' spanish.ldf, mainly as a fallback solution.

There are two public attributes/modifiers enabled for this ``language'', 
asc and tn, designed to improve support of ASCII input; 
the former activates all shorthands necessary to input Spanish with plain ASCII 
characters: this modifier supersedes the need to call the activeacute option 
from Babel; 
while the latter supports the input of Spanish \~n with the tilde ~n.
Both modifiers are provided for backwards compatibility, assuming that most 
Spanish users actually choose a suitable 8bit font and input encoding.

Questions, comments? Drop me an email at jlrn77 at gmail dot com

April 1, 2015.
