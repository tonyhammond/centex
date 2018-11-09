%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% CENTEX.CH
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  

\privatize
\message{* Last Minute Changes *}

\def\subhead
        #1\par{\let\par\endgraf
        \ifdim\parskip=\z@\vskip\parskip\else\fi
        \leavevmode{$\underline{\hbox{\sqi
        \vrule height\z@ depth1.5\p@ width\z@{}#1\unskip}}$}\hskip1em 
plus.65em
        \@nobreak\relax}
 
\let\topic\subhead

\def\parse@id@received
        #1#2#3#4#5#6{%
%\global\@year\ifnum#2<5 199#2\else198#2\fi
\global\@year199#2
        \global\@month#3#4\global\@day#5#6%
        \xdef\month@name{\month@table\@month}}
 
\font\ten@ssi@I=cmssi10 \@magscale1        % for titlepage affiliations

\newif\if@affiliations@

\def\authors@TP#1{%
%\vadjust{\vskip.5\cm}
	\linebreak\ten@ss@I#1\linebreak
	\ignorespaces}%
\def\address@TP#1{\ten@ssi@I#1\linebreak\ignorespaces}%

\def\affiliations
	#1{\@affiliations@true
	\def\authors@TitlePage{\leavevmode
	\let\authors\authors@TP\let\address\address@TP#1}%
}

%\def\authors@CP#1{\vadjust{\vskip.5\cm}\linebreak\ten@ss@II#1\linebreak
%	\ignorespaces}%
%\def\address@CP#1{\ten@ssi@II#1\linebreak\ignorespaces}%

%\def\authorsCoverPage
%	#1{\@affiliations@true
%	\def\authors@CoverPage{\leavevmode
%	\let\authors\authors@CP\let\address\address@CP#1}%
%}

%\def\coverpage@I
%        {\@newpage\write@nl{<Cover Page>}%
%        \@regmarks@false\set@page@covers
%        \vbox{\hsize12\cm \text@fonts@B
%        \ulap{\rightline{\cen@cover@class}\nointerlineskip\vskip1\cm}
%        \top@corners
%        \moveright.5\cm \vbox to\vsize{\hsize11\cm
%        \rightline{\hfil\vtop{\hsize8.25\cm
%        \raggety@left \vskip.75\cm
%        \dlap{\sq SACLANTCEN \doc@type\linebreak
%        serial no.: \doc@serial@no}
%        \vskip4\cm
%        \if@demo@\cen@cover@logo\fi
%        \vskip7.5\cm
%        \ulap{\ten@ssbf@II\baselineskip16\p@\doc@title}
%        \vskip1\cm
%        \dlap{\ten@ss@II\baselineskip16\p@
%		\if@affiliations@\authors@CoverPage\else\doc@author\linebreak\fi
%              	\vskip1\cm\date@approved}
%        }}
%        \vfill
%        \ulap{\sq\tolerance\@M\hbadness\@M
%                \hyphenpenalty\@M\parfillskip\z@\@blurb}
%        \vskip.75\cm
%        }\bottom@corners
%        \dlap{\vskip.5\cm\rightline{\cen@cover@class}\nointerlineskip}
%        }}
 
\def\titlepage
        {\pageno\m@ne
        \vbox to\page@height
        {\no@hyphens
        \centerline{\dlap{\hsize7.5\cm
		\if@affiliations@
                \vskip5\cm
		\else
                \vskip7.5\cm
		\fi
                \ulap{\@center\ten@ss@II\baselineskip16\p@\doc@title}
                \vskip1\cm
                \dlap{{\@center\ten@ss@I\baselineskip14\p@
		\if@affiliations@
		\vskip-\baselineskip\authors@TitlePage
		\else\doc@author\fi
                        \vskip1\cm
                        \nointerlineskip
                        \centerline{\vrule width2.5\cm height.4\p@}
                        \nointerlineskip}
                        \if@SACLANTCEN@\vskip.5\cm\centerline
                        {\dlap{\hsize6.35\cm\parfillskip\z@\@mumble}}
                        \fi}
                }}
        \vfill
        \if@SACLANTCEN@\released@by
        \centerline
                {\ulap{\@center\sq\@release\vskip3\cm\@signed}}
        \fi
        }\eject}
 
% changed \tenss@II to \ten@ss@II
\def\preface
        {\newpage\@begingroup\@squeeze \vglue1.5\baselineskip
        \parindent=1\cm \noindent{\null\hfill\ten@ss@II
        Preface\break}\smallskip}
 
\def\@address
        {SACLANT Undersea Research Centre\\Viale San Bartolomeo 400\\
        19138 San Bartolomeo (SP), Italy\\
        \smallskip
        \leavevmode\halign{##\ \hfil&##\hfil\cr
        tel:   & +39-187-540.111\cr
        fax:   & +39-187-524.600\cr
        \noalign{\vskip\baselineskip}%
        e-mail: & library@saclantc.nato.int\cr
        }}
 
\outer\def\annex
        {\g@transfer\@annex<<\class@options<<\everyclass}
\def\@annex
        #1. #2\par{\if#1\empty\write@nl{<Annex> }\else
        \write@nl{<Annex #1> }\enspace\fi
        \@@section\tw@{#1}{#2}}

\def\str@appendix{Appendix }
\def\str@annex{Annex }
\def\@@section
        #1#2#3{\endgroup\@newpage\@newclass\vglue.05\page@height
        \ifnum\pageno<\@ne\pageno\@ne\fi
        \ifnum\page@style=\@ne \pageno=\@ne
        \section@label=\expandafter{#2}%
        \fi
        \text@fonts@A \parindent\z@
        {\vtop{\baselineskip16\p@\ragged@left
        \hbadness\@M
        \ifcase#1\ten@ssi@VI#2\or\ten@ssi@IV\str@appendix#2\or
	\ten@ssi@IV\str@annex#2\fi
        \vadjust{\vskip6\p@}\linebreak
        \ten@ss@II#3\linebreak
        \raise6\p@\line{\hrulefill}}\par
        }\@nobreak\smallskip}
 
%\outer\def\emptypage
%        {\@transfer\@emptypage<<\class@options<<\everyclass}
%\def\@emptypage{\null\par\vfill\eject\endgroup}

%\outer\def\blankpage
%        {\@transfer\@blankpage<<\class@options<<\everyclass}
%\def\@blankpage{\@blankpage@true\null\vfill\eject\endgroup}

\newif\if@force@class@
\def\forceclass{\@force@class@true}
\def\notforceclass{\@force@class@false}

\def\@class
        {\if@draft@\ten@ssbf@
		\ifcase\page@class\@NU\or\@NR\or\@NC\or\@NS\fi
        \else
                \ifx\doc@class\@NU
			\if@force@class@\ten@ssbf@
			\ifcase\page@class\@NU\or\@NR\or\@NC\or\@NS\fi
			\fi
                \else\ten@ssbf@
			\ifcase\page@class\@NU\or\@NR\or\@NC\or\@NS\fi
                \fi
        \fi}
 
\def\center@page@width#1{\hbox to\page@width{\hss#1\hss}}
\def\@regmarks
        {\center@page@width{\ifnum\page@sides=\@ne
        \ifodd\pageno\kern-.5\cm\else\kern.5\cm\fi\fi
        \vrule\@height.5\cm\@depth\z@\@width.4\p@}}

\long\def\get@tab@macros
        #1\\{#1\@@table}

% Need also to change the figure string in the message
% \@inform{Including PostScript figure "\@file"}\relax
% in the \build@special macro

\newtoks\fig@tag       \fig@tag={Figure} % figure tag (e.g. "Plate")

\def\set@cap@box
        {\ifcase\fig@cap@pos
        \ifdim\fig@width>\page@width\fig@cap@width\page@width
                \else
                \ifdim\fig@tuck=\z@\else
                \ifdim\fig@width<\fig@tuck
                \fig@cap@width=\page@width
                \advance\fig@cap@width by-\fig@width
                \ifdim\fig@inset=\z@\fig@inset=-.5\cm\fi
                \advance\fig@cap@width by\fig@inset\fig@cap@pos\thr@@%
                \else\fig@cap@width\fig@width
                \fi\fi
        \fi
        \or
        \ifdim\fig@width>\page@width\fig@cap@width\page@width
        \else\fig@cap@width\fig@width\fi
        \or
        \ifdim\fig@width>\page@width\fig@cap@width\page@width
        \else\fig@cap@width\fig@width\fi
        \else
        \ifdim\fig@width<\page@width \fig@cap@width=\page@width
        \advance\fig@cap@width by-\fig@width
        \ifdim\fig@inset=\z@\fig@inset=-.5\cm\fi
        \advance\fig@cap@width by\fig@inset
        \else\fig@cap@width\page@width\fig@cap@pos\z@\fi
        \fi
        \setbox\fig@cap@box\vbox{\hsize=\fig@cap@width
        \text@fonts@B\rightskip\z@ plus2em
        \noindent\bf\the\fig@tag~\the\fig@no\quad\it\the\fig@cap
        \ifdim\fig@cap@raise=\z@\else\vskip\fig@cap@raise\fi
        }}
 
\def\fig@options
        {%
        \@option <source>    <\set@map[fig@source]={\\<art>=0 \\<ps>=1 }>
        \@option <caption>   <\set@map[fig@cap@pos]={\\<default>=0
                                      \\<below>=1 \\<above>=2
                                      \\<right>=3 \\<left>=4
                                      \\<bot-right>=5 \\<top-right>=6
                                      \\<top-left>=7 \\<bot-left>=8 
                                      \\<none>=-1 }>
        \@option <orient>    <\set@map[fig@orient]={\\<portrait>=0
                                                   \\<landscape>=1 }>
%
        \@option <file>      <\set@toks\fig@eps=\@value>
        \@option <tag>       <\set@toks\fig@tag=\@value>
        \@option <underlay>  <\set@toks\x@fig@eps=\@value\fig@lay\@ne>
        \@option <overlay>   <\set@toks\x@fig@eps=\@value\fig@lay\tw@>
        \@option <scale>     <\set@toks\fig@scale=\@value>
        \@option <size>      <\expandafter\get@fig@sizes\@value!>
        \@option <height>    <\set@dim\fig@height=\@value\cm>
        \@option <width>     <\set@dim\fig@width=\@value\cm>
        \@option <inset>     <\set@dim\fig@inset=\@value\cm>
        \@option <tuck>      <\set@dim\fig@tuck=\@value\cm>
        \@option <raise>     <\set@dim\fig@cap@raise=\@value\cm>
        }
 
\global\catcode`\%=11 \global\catcode`\!=11
 
\def\get@BBox
        {\global\catcode`\%=11 \global\catcode`\!=11
        \global\catcode`\_=11 \global\catcode`\&=11
        \global\catcode`\:=10 \global\catcode`\^^?=9
        \edef\@{\the\fig@eps}\relax
        \ifx\@\empty\fig@eps={\the\fig@tag_\the\fig@no}\fi
        \openin\eps@file=\the\fig@eps.EPS
        \ifeof\eps@file\@error{PostScript file is missing}\fi
        \def\ps@comment{%%}\def\ps@signature{%!}\count@=\@ne
        \def\ps@BoundingBox{BoundingBox}\relax
        \def\ps@EndComments{EndComments}\relax
        \loop
        {\endlinechar=`\>\global\read\eps@file to\ps@comment@line}\relax
        \ifnum\count@=\@ne
                \expandafter\parse@ps@first@line\ps@comment@line
                \ifx\ps@first@word\ps@signature\@continue@true
                \else\@error{This is NOT a conforming
                        PostScript file}\@continue@false
                \fi
        \else
                \expandafter\parse@ps@comment@line\ps@comment@line
                \ifx\ps@first@word\ps@comment\@continue@true
                \ifx\ps@keyword\ps@BoundingBox
                \expandafter\build@special\ps@value\@continue@false
                \else
                \ifx\ps@keyword\ps@EndComments\@error{`BoundingBox'
                        NOT found in header comments}\@continue@false
                \else\@continue@true\fi\fi
                \else\@error{This is NOT a conforming
                             PostScript file}\@continue@false
                \fi
        \fi
        \@incr\count@
        \if@continue@
        \repeat
        \global\catcode`\%=14 \global\catcode`\!=12
        \global\catcode`\_=8 \global\catcode`\&=4
        \global\catcode`\:=12 \global\catcode`\^^?=15}
 
\global\catcode`\%=14 \global\catcode`\!=12 

\def\@director{David~L.~Bradley}
\def\div@chief
        {\ifx\doc@division\@SRD
        R.~Weatherburn\else\ifx\doc@division\@URD
        W.I.~Roderick\fi\fi}

\def\@division
        {\ifx\doc@division\@SRD
        Systems Research Division\else\ifx\doc@division\@URD
        Environmental Research Division\fi\fi}

\def\setdraftstamp{\everypage={\special{OVERLAY CENTEX:DRAFT.PS}}}

\def\JASA{Journal of the Acoustical Society of America}
\def\jasa{{\it\JASA\/}}
\errorcontextlines\@ne

%\newlinechar=\m@ne

\def\print@ln{{\newlinechar=`@\message{@}}}
\def\print@nl#1{{\newlinechar=`@\message{@#1}}}
\def\print@#1{{\newlinechar=`@\message{#1}}}

\def\write@ln#1{\print@{#1@}}
\def\write@nl#1{\print@{@#1}}
 
\def\@fatal#1{\write@nl{@!Fatal Error: #1@}}
\def\@error#1{\write@nl{@!Error: #1@}}
\def\@warning#1{\write@nl{@!Warning: #1@}}
\def\@inform#1{\write@nl{@!Note: #1@}}
 
\hyphenation{mine-sweeping}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
% I. Changes already incorporated
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
% II. Changes yet to be incorporated
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  

\newcount\count@i

\def\@Distribution
        {\expandafter\@input\@Distribution@List
        %%%%%%%%%%%%%%%%%%%%%%%%%
        \noalign{\vskip1.5\cm plus1fil
                 \global\@done@counting@true}%
        Total external distribution&\the\cc@external\cr
        \noalign{\advance\cc@total\cc@external
                 \advance\cc@total\cc@library
                 \count@\cc@total \divide\count@ by5 \multiply\count@ by5
                 \count@i\cc@total \advance\count@i by-\count@
                 \advance\count@i by-5 \multiply\count@i\m@ne
                 \global\advance\cc@total\count@i
                 \global\advance\cc@library\count@i
                 \ifnum\cc@total<100
                 \gdef\@rule{\vrule\@width1em\@height.4\p@}\else
                 \gdef\@rule{\vrule\@width1.5em\@height.4\p@}\fi}%
        SACLANTCEN Library&\the\cc@library\cr
        \closeup
        \omit&\omit\@rule\cr
        Total number of copies&\the\cc@total\cr
        %%%%%%%%%%%%%%%%%%%%%%%%%
        }
 
% Took out one "\ifx" - forgot to remove matching "\fi"

\def\@Distribution@List
        {%
        \ifx\doc@type\CEN@REPT CENTEX:NORMAL.DIS\else
        \ifx\doc@type\CEN@MEMO CENTEX:NORMAL.DIS\else
        \ifx\doc@type\CEN@SPEC CENTEX:NORMAL.DIS\else
        \ifx\doc@type\ANN@REPT CENTEX:ANNUAL.DIS\else
        \ifx\doc@type\PRO@WORK CENTEX:SCIPRO.DIS\else
%        \ifx\doc@type\CONF@PRO CENTEX:NORMAL.DIS\else
%        \fi
	\fi\fi\fi\fi\fi
        }

\def\etal{{\it et al\/}}
\def\vs{{\it vs\/}}

% For now have added EPS_INPUTS as EPS file area.  Need to think about 
this.
% Problem also with "" delimeters!  To add in DOC file.

% In \coverpage@III
% think about the font set - i.e. use "\cen@text@fonts@B" instead of 
%	"\text@fonts@B" which may have been redefined !!!


\newcount\element@present

\def\abstract@options
        {%
        \@option <class>    <\set@map[class@class]={\\<NU>=0 \\<NR>=1
                                          \\<NC>=2 \\<NS>=3 }>
        \@option <element>  <\set@map[element@present]={\\<present>=0
                                             \\<absent>=-1 \\<none>=-1 }>
        }
 
\def\abstract
        {\@newpage\element@present\z@\set@page@class\recto@page
        \g@transfer\@abstract<<\abstract@options<<\everyclass}
\def\@abstract
        {\endgroup\@newclass\title@and@author
        \noindent{\bf Abstract:}\quad
        \ifnum\element@present=\m@ne(No abstract)\fi
	}

%\def\references@options
%        {%
%        \@option <class>    <\set@map[class@class]={\\<NU>=0 \\<NR>=1
%                                          \\<NC>=2 \\<NS>=3 }>
%        }
 
\def\mn{\hbox{$'$}}

\def\dgN{\hbox{$\,^\circ$N}}
\def\dgS{\hbox{$\,^\circ$S}}
\def\dgE{\hbox{$\,^\circ$E}}
\def\dgW{\hbox{$\,^\circ$W}}

% \L and \R are defined as synonyms for \left and \right.  If followed by
% an optional number they will select specific delimiter sizes:
%   \L0 - default delimiter
%   \L1 - \big
%   \L2 - \Big
%   \L3 - \bigg
%   \L4 - \Bigg
%   (higher values 5-9 are discarded - we just get the scaled delimiter)

\def\L#1{{\count@=\mathcode`#1 \advance\count@-28720
	\ifcase\count@
	\global\let\@L\empty
	\or\global\let\@L\bigl
	\or\global\let\@L\Bigl
	\or\global\let\@L\biggl
	\or\global\let\@L\Biggl
        \or\global\let\@L\left
        \or\global\let\@L\left
        \or\global\let\@L\left
        \or\global\let\@L\left
        \or\global\let\@L\left
	\else\gdef\@L{\left#1}%
	\fi}\@L}
                                                                   
\def\R#1{{\count@=\mathcode`#1 \advance\count@-28720
	\ifcase\count@
	\global\let\@R\empty
	\or\global\let\@R\bigr
	\or\global\let\@R\Bigr
	\or\global\let\@R\biggr
	\or\global\let\@R\Biggr
        \or\global\let\@R\right
        \or\global\let\@R\right
        \or\global\let\@R\right
        \or\global\let\@R\right
        \or\global\let\@R\right
	\else\gdef\@R{\right#1}%
	\fi}\@R}
                                                                   
% Problem with \bigl & \bigr:
% Not selcted because the PLAIN \big family are defined for use with
% 10 pt rather than 11 pt sizes.
% Let's scale up the \vbox dimensions by 1 pt.  This works, although 
perhaps
% we should have scaled by \magstephalf?
%
\def\big#1{{\hbox{$\left#1\vbox to9.5\p@{}\right.\n@space$}}}
\def\Big#1{{\hbox{$\left#1\vbox to12.5\p@{}\right.\n@space$}}}
\def\bigg#1{{\hbox{$\left#1\vbox to15.5\p@{}\right.\n@space$}}}
\def\Bigg#1{{\hbox{$\left#1\vbox to18.5\p@{}\right.\n@space$}}}
                                                                   
\def\math@rm#1>{{\rm#1}}
\def\math@bf#1{{\bf#1}}
\def\math@gk
	#1{{\count@=\mathcode`#1
	\advance\count@-"7100 \advance\count@-64
	\ifcase\count@
	\or A%
	\or B%
	\or X%
	\or \Delta%
	\or E%
	\or \Phi%
	\or \Gamma%
	\or H%
	\or I%
	\or \@warning{Not coded: \string\##1}%
	\or K%
	\or \Lambda%
	\or M%
	\or N%
	\or O%
	\or \Pi%
	\or \Theta%
	\or R%
	\or \Sigma%
	\or T%
	\or \Upsilon%
	\or \@warning{Not coded: \string\##1}%
	\or \Omega%
	\or \Xi%
	\or \Psi%
	\or Z%
	\or \@warning{Not coded: \string\##1}%
	\or \@warning{Not coded: \string\##1}%
	\or \@warning{Not coded: \string\##1}%
	\or \@warning{Not coded: \string\##1}%
	\or \@warning{Not coded: \string\##1}%
	\or \@warning{Not coded: \string\##1}%
	\or \alpha%
	\or \beta%
	\or \chi%
	\or \delta%
	\or \epsilon%
	\or \phi%
	\or \gamma%
	\or \eta%
	\or \iota%
	\or \@warning{Not coded: \string\##1}%
	\or \kappa%
	\or \lambda%
	\or \mu%
	\or \nu%
	\or \omicron%
	\or \pi%
	\or \theta%
	\or \rho%
	\or \sigma%
	\or \tau%
	\or \upsilon%
	\or \@warning{Not coded: \string\##1}%
	\or \omega%
	\or \xi%
	\or \psi%
	\or \zeta%
	\else 
	\@warning{Not coded: \string\##1}\fi
	}}

\def\set@math@font@switches
	{\let\<=\math@rm \let\&=\math@bf \let\#=\math@gk}

\everymath={\set@math@font@switches}
\everydisplay={\set@math@font@switches}

\newcount\fig@ctr 
\newcount\loop@ctr 

\def\setfigures
	#1#2-#3 {\newpage\fig@ctr=#2\loop@ctr=#3%
	\advance\loop@ctr by-#2%
	\advance\loop@ctr by\@ne
	\do\number\loop@ctr\times{\vbox to\vsize
	{\vfill\noindent\ten@bf Figure~#1\the\fig@ctr}
	\global\@incr\fig@ctr}}

% Fix to output routine to suppress redundant blank pages.  Checks whether 
% \box255 only contains \topskip glue:
%
% 1. Check first the depth of \box255 - if not zero, then normal OTR
% 2. Check also if \topins is empty - otherwise normal OTR
% 3. Check also if \topins is empty - otherwise normal OTR

% \@output={\cen@output{\dimen@=\dp\@cclv \unvbox\@cclv}}

\@output={{%\showbox255
        \ifdim\dp\@cclv=\z@    % does \box255 have zero depth
        \ifvoid\topins         % is \topins empty (no floats)
        \ifvoid\footins        % is \footins empty (no footnotes)
        \setbox\z@\vbox{\unvcopy\@cclv\unskip}\ifdim\ht\z@=\topskip
        \setbox\z@\box\@cclv\deadcycles\z@
        \else
        \cen@output{\dimen@=\dp\@cclv \unvbox\@cclv}%
        \fi
        \else
        \cen@output{\dimen@=\dp\@cclv \unvbox\@cclv}%
        \fi
        \else
        \cen@output{\dimen@=\dp\@cclv \unvbox\@cclv}%
        \fi
        \else
        \cen@output{\dimen@=\dp\@cclv \unvbox\@cclv}%
        \fi
        }}
 
\def\emptypage{\null\par\vfill\null\eject}
\def\blankpage{\@blankpage@true\null\vfill\null\eject\@blankpage@false}

\def\endinsert
        {\egroup                           % finish the \vbox
        \if@mid \dimen@\ht\z@ \advance\dimen@\dp\z@
        \advance\dimen@12\p@ \advance\dimen@\pagetotal
        \ifdim\dimen@>\pagegoal
        \gdef\midinsert{\@midfalse\p@gefalse\@ins}%
        \@midfalse\p@gefalse\fi\fi
        \if@mid \vskip\parskip\bigskip\box\z@\bigbreak
        \else\insert\topins{\penalty100 % floating insertion
        \splittopskip\z@skip
        \splitmaxdepth\maxdimen \floatingpenalty\z@
        \ifp@ge \dimen@\dp\z@
%        \box\z@
        \vbox to\vsize{\unvbox\z@\kern-\dimen@}% depth is zero
        \else \box\z@\nobreak\bigskip\fi}\fi\endgroup}
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% new macros 

\let\vms\sysmessage \let\status\sysstatus
\def\xeroxcopy{\nocornerrules}
\let\SH\spanhead                                                          
\let\SR\spanrule
% \def\datasheet{\input CENTEX:DATA_SHEET}
\def\re{\text{ re }}

% superseded macros - issue \@warning

\let\doc@classification\doc@class
\def\approved#1\par{\@warning{"\string\approved" superseded -- remove}}
\def\paint{\@warning{"\string\paint" superseded -- use 
"\string\illustrate".}}
\def\nopaint{\@warning{"\string\nopaint" superseded -- use
"\string\noillustrate".}}

% change macro - footnotes are set in small type

\def\vfootnote
        #1{\insert\footins\bgroup\text@fonts@B
        \interlinepenalty\interfootnotelinepenalty
        \splittopskip\ht\strutbox % top baseline for broken footnotes
        \splitmaxdepth\dp\strutbox \floatingpenalty\@MM
        \leftskip\z@skip \rightskip\z@skip \spaceskip\z@skip 
\xspaceskip\z@skip
        \textindent{#1}\footstrut\futurelet\next\fo@t}


\noprivatize
\endinput
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% OK - That's the end of the 
% implemented changes !!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Following is an initial attempt at defining a project string table
% (Can't remember for what purpose!)

% \def\short@name#1#2{#1}
% \def\long@name #1#2{#2}
% \def\month@short{\expandafter\short@name\month@name}
% \def\month@full{\expandafter\long@name\month@name}
%        \xdef\month@name{\month@table\@month}}
% 
% \def\PRJ@{{00}}       \def\PRJ@II{{02}}      \def\PRJ@IV{{04}}
% \def\PRJ@V{{05}}      \def\PRJ@VI{{06}}      \def\PRJ@XII{{12}}
% \def\PRJ@XVIII{{18}}  \def\PRJ@XIX{{19}}     \def\PRJ@XX{{20}}
% \def\PRJ@XXI{{21}}    \def\PRJ@XXII{{22}}    \def\PRJ@XXIII{{23}}
% \def\PRJ@XXV{{25}}    \def\PRJ@XXVI{{26}}
% \def\PRJ@A{{A}}       \def\PRJ@E{{E}}        \def\PRJ@S{{S}}
 

% \def\project@table
%         #1{\ifcase#1\or
%         {00}{(Null Project)}\or
%         {02}{Underwater Detection, Classification and Tracking}\or
%         {04}{Oceanic Variability}\or
%         {05}{Applied Ocean Acoustics}\or
%         {06}{Operational Research Studies}\or
%         {12}{Seafloor Acoustics}\or
%         {18}{MILOC Studies}\or
%         {19}{Environmental Modelling}\or
%         {20}{Activated Towed Arrays}\or
%         {21}{}\or
%         {22}{}\or
%         {23}{Satellite Remote Sensing}\or
%         {25}{Mine Countermeasure Systems}\or
%         {26}{Magnetic Detection}\or
%         {A}{}\or
%         {E}{}\or
%         {S}{Special Scientific Studies}\fi}

% \def\project@lookup
%         #1{%
%         \ifx#1{00}0\fi
%         \ifx#1{02}1\fi                                            
%         \ifx#1{04}2\fi                                            
%         \ifx#1{05}3\fi                                            
%         \ifx#1{06}4\fi                                            
%         \ifx#1{12}5\fi                                            
%         \ifx#1{18}6\fi                                            
%         \ifx#1{19}7\fi                                            
%         \ifx#1{20}8\fi                                            
%         \ifx#1{21}9\fi                                            
%         \ifx#1{22}10\fi                                            
%         \ifx#1{23}11\fi                                            
%         \ifx#1{25}12\fi                                            
%         \ifx#1{26}13\fi                                            
%         \ifx#1{A}14\fi                                             
%         \ifx#1{E}15\fi                                             
%         \ifx#1{S}16\fi}                                             
                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Following is an initial attempt at producing burst (or flag?) page for
% NATO SECRET documents

\newcount\pages@out \pages@out\z@
\def\advancepageno{\ifnum\pageno<\z@ \global\advance\pageno\m@ne
  \else\global\advance\pageno\@ne \fi
\global\advance\pages@out\@ne
} % increase |pageno|

\outer\def\bye
	{\par\vfill\supereject
        \ifx\doc@class\@NS
\message{Going special!}\relax
\def\cen@regmarks##1{}\relax
\let\cen@headline\empty
\let\cen@footline\empty
\let\cen@tagline\empty
        \null\null
\expandafter\edef\expandafter\e@doc@id\doc@id
\edef\@tokens
	{{OVERLAY PS:NS.PS, 
	STRING="/@pp(  \the\pages@out)def/@id((\e@doc@id))def"}}\relax
	\special\@tokens
	\par\vfill\supereject\fi
        \end}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
