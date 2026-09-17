
Michael Ferguson -- Aug. 1991
mike@inrs-telecom.uquebec.ca
(514)765-7834

INRSTeX is a complete document preparation package, including graphics for
document preparation. It was designed from the beginning for use in a
bilingual (French/English) environement. 
The system, excluding its graphics component, is usable
with any TeX system but is most useful, when using ordinary "cm"
fonts with an MLTeX system. TeXGraph will work with any reasonable
PostScript driver ans has been specialized here to work with a modified
modified version of Nelson~Beebe's DVIALW on the IBM~PC and
uses Tom~Rokiki's DVIPS on the UNIX workstations. The PC Version of the
package includes an MSDOS  version of the modified DVIALW. 

The INRSTeX macro package kernel is built on top of PLAIN. All the
facilties of plain are left intact and available. Additional facilities are
included for

* section and chapter heads,
* lists,
* easy tables,
* floating figure and table insertions, 
* footnotes,
* automatic generation of table of contents, list of figures, and
  list of tables, 
* automatic numbering of equations, section heads, etc.,
* symbolic referencing of equations, sections, etc.,
* optional margin notes to aid in keeping track of symbolic
  references, 
* automatic generation of citation lists (IEEE style only)
* a subdocument feature for building large documents in pieces.
* a verbatim style using {\tt typewriter} fonts for such things as
  program listings,
* a several document styles including a paperstyle and  bookstyle.
* TeXgraph, a graphics system for drawing figures and inserting
  external figures. This uses the graphics primitives of PostScript.
  It is inside rather than outside the TeX system.
* slide making including graphics for letterhead, 
Installation Guide for INRSTeX with MLTeX 3.+ or TeX 3.+

-------------------------------------------------------------------

The system is supplied as compressed *.zip files that can be unpacked with
PKUNZIP. The file list is as follows:

README   TXT     7032   8-22-91   7:53a --- This file

DVIALW   TXT     1251   8-23-91  10:43a --- List of command line options
	for DVIALW

INRSTEX  ZIP   117630   8-04-91   7:47a --- INRSTeX sources ... These are
	only needed for creating an INRSTeX format file.
INRSINPU ZIP    36841   8-04-91   7:54a --- This is a complete set of
	additional macros, including the graphics that may be called as 
	needed by INRSTeX. These should be put in your TEXINPUTS directory.
TEXGRAPH ZIP   115632   8-04-91   7:59a --- These are the TeXgraph macros,
	both for INRSTeX and LaTeX. It also the INRS modified includes
	DVIALW.
DOC_TEX  ZIP   201034   8-22-91   8:31p --- These are the TeX source files
	for the INRSTeX Refernce book.
DOC_DVI  ZIP   256912   8-22-91   8:28p --- These are DVI files, for each
	chapter of the Reference Book. The file THGRAPH.DVI is the
	documentation for TeXGraph.
PKZIP    EXE    31408  10-01-89   1:02a 
PKUNZIP  EXE    22022  10-01-89   1:02a
BATCH    ZIP     1532   8-04-91   8:05a --- These are some batch files,
	including INRSTEX.BAT that should be used for invoking INRSTeX.

-----------------------------------------------------------------------





INRSTeX is a multilingual document preparation system. It comes in many
flavors, unfortunately, and is easily customized. The main documentation is
the "INRSTeX Reference Manual". The graphics part of INRSTeX requires a
driver that will interpret inline PostScript correctly and process the
information in the *.dvi file in the order that it occurs. An INRS modified
version of Nelson Beebe's DVIALW driver does this  and is included with the
TeXGraph files. The only documentation of TeXGraph at the moment is in the
detailed comments in the texgraph.sty file. This requires that your print
driver be able to interpret a few commands. Plot files are assumed to be
Encapsulated PostScript with a correct bounding box. TeXGraph reads this
box and leaves the appropriate space. It is also possible to rotate and/or
scale a graph. 


INRSTeX as supplied gives messages in English and French. These messages
should be changed for other languages. Most of the messages are found in 
inrsdef.tex 


Customizing INRSTeX

Different flavors of INRSTeX are needed for different operating systems and
versions of TeX. Changes are made by editing the file inrs.tex or one of the
specialized files. These files are very heavily documented ... to make
changes easier. The master file inrs.tex brings in the specialized files for
various services. In some cases, this file must be editied to bring in the
correct version of the file for a particular installation. A good example is
given below for fonts. 

Customizing changes may be necessary in the following areas:

1. Fonts

TeX 3.0 uses Computer Modern (cm...) fonts. This version of INRSTeX does not
require the new 256 character extended fonts. Modifications to include
these fonts should be quite easy when they become available.  The current
INRSTeX book was made with (am...) fonts and includes many fonts that are
not available on the current distribution. INRSTeX, in addition to defining
point families, adds fonts necessary to complete font families at various
point sizes. It may be necessary to add/delete fonts and font families for
your specific installation. 

In addition there is a file spfont.tex that defines an arbitrarily scaled
family of \tenpoint. It is used only in the slide package and is the
(cm...) version only. Some TeX distribution tapes do not have diminished
pixel versions of the fonts. 

2. File Naming:

INRSTeX writes out a number of auxiliary files. They have the same name as
the input file but with different extensions. These are used to create
tables of contents, figures, tables, .... The design is such that the page
numbers for the "table of contents", for example may be in the table of
contents. If INRSTeX has already opened the "job.toc" file and then tries
to bring in the "job.toc" file to write the table of contents, it will
bring in the previous version. For systems without versions, such as MSDOS
or Unix, this is done by inputting files with the name "@job.toc" or
"job.toc~" respectively. This means that INRSTeX must be invoked using an
INRSTEX.BAT file for MSDOS or a shell script like INRSTEX.SH for Unix.

To build an INRSTeX format file for MSDOS, it is necessary to 

\input writdos 

This is included in the INRS3_PC.TEX master file. 

For Unix, the \input writdos should be replaced by 

\input writunix 

For systems with version numbers, and the concept of version "-1" such as
VAX/VMS, neither of these are required.  

The auxiliary files normally written have the extensions: 

.toc -- table of contents
.tbl -- list of tables
.fig -- list of figures
.ctg -- list of citations
.tag -- list of internal references such as equations or sections

In addition, for the INRSTeX reference manual a chapter status file and
an index file

masth.sta 
masth.ind

are written. 


3. inrsdef.tex

All of the default spacings, fonts, etc. for INRSTeX are given in this file.
For information this file also includes any defaults set in PLAIN. Those
defaults may be changed in this file. In fact, it was intended that all of
the defaults would be found in this file. 

4. Graphics and INRSTeX

This version of INRSTeX includes TeXGraph, a system for creating graphics
and including EPSF (Encapsulated PostScript Format) files in a TeX
document. In order to make the package self contained, we have included a
modified version of Nelson Beebe's DVIALW (for MSDOS only). 
This, along with a PostScript printer will allow you to produce "complete"
documents.


5. Installation: 

To create a format file for INRSTeX, with French and English hyphenation
patterns, you should INITEX the inrs3_pc file. inrs3_pc brings in a version
of plain.tex, called plain_nh.tex that does not call the hyphenation
tables. The hyphenation tables are called later in masthyph.tex. 

The inrs3_pc.tex file has a switch that checks to see if \charsubdef is
defined in the INITEX to distinguish between MLTeX 3.+ and TeX 3.+. It then
brings in the appropriate files to access and define extended characters.

If necessary, you might have to increase some of TeX's internal parameters
such as font memory. For TeX 2.+, it was necessary to have \f 25000 when
invoking PCTeX. 

6. Documentation

The INRSTeX reference manual is included on these floppies. It is over 200
pages longs so that printing it all at once might either break your printer
and/or cause you to be accused of antisocial behaviour. 

The complete sources and a complete set of .DVI files are included in the
\inrsdoc directory in .ZIP compressed form. Both PKZIP and PKUNZIP are
included. They have been supplied as approximately one chapter per file. To
obtain the .DVI files just type

pkunzip doc_dvi

The uncompressed .dvi files are approximately 1 megabyte. This set also
includes IEEELOGO.PS which is needed to create the corresponding .PS files.
To create the corresponding PostScript files just execute MASTPS.BAT 

mastps 

The PostScript files take up about 3.5 meg while the uncompressed .DVI
files take up about 1 meg. 

In addition, the complete sources for the Reference Book are included. 
These are uncompressed by 

pkunzip doc_tex

To create a new set of .dvi files, if you should follow this path. 

a) Tex the master file masth.tex to create a complete set of index,
status, and table of contents files by 

tex masth

b) Massage and sort the index file MASTH.IND to create a MASTH.SOR by
running the program 

indsort

The C sources for this program are included. 

c) Create .dvi files for each chapter by running the MASTH.BAT file. 

masth

d) Create the PostScript files by running the MASTPS.BAT file.

mastps

e) To print the all of the resulting files use the MASTPR.BAT file. 

mastpr

This, after feeding paper to your printer will give you the complete book.

Yours 
Michael J. Ferguson


