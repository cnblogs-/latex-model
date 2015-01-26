%%
%% This is file `ZJUthesis.cls',
%% 
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ZJUthesis}[2006/04/15 v0.1c ZJUthesis document class]
\newif\ifZJU@typeinfo \ZJU@typeinfotrue
\DeclareOption{notypeinfo}{\ZJU@typeinfofalse}
\newif\ifZJU@dvips \ZJU@dvipstrue
\DeclareOption{dvips}{\ZJU@dvipstrue}
\DeclareOption{dvipdfm}{\ZJU@dvipsfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
\LoadClass[cs4size,a4paper,fancyhdr]{ctexbook}[2004/08/14]
%% math packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
%% graphics packages
\RequirePackage{graphicx,psfrag}
%% hyperref package
\ifx\pdfoutput\undefined % We're not running pdftex
  \ifZJU@dvips
    \RequirePackage[dvips]{hyperref}
  \else
    \RequirePackage[dvipdfm]{hyperref}
  \fi
  \AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}} % GBK -> Unicode
\else
  \RequirePackage[pdftex]{hyperref}
\fi
\hypersetup{CJKbookmarks,%
       bookmarksnumbered,%
              colorlinks,%
               linkcolor=blue,%
              plainpages=false,%
            pdfstartview=FitH}
\AtBeginDocument{\makeatletter\input{ZJUthesis.cfg}\makeatother}
\oddsidemargin 1.5 true cm
\if@twoside
  \evensidemargin 0 true cm
\else
  \evensidemargin 1.5 true cm
\fi
\textheight 21 true cm
\textwidth 14.5 true cm
\headheight 5pt
\parskip 0.5ex plus 0.25ex minus 0.25ex
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \thispagestyle{empty}%
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\renewcommand{\floatpagefraction}{0.80}
\bibliographystyle{plain}
\newcommand\ZJUspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}
\def\reserved@a#1 #2 #3\@nil{%
  \def\ZJUfiledate{#1}%
  \def\ZJUfileversion{#2}%
  \def\ZJUfileinfo{#3}}%
\edef\reserved@b{\csname ver@ZJUthesis.cls\endcsname}
\expandafter\reserved@a\reserved@b\@nil\relax
\def\ZJU@underline[#1]#2{%
  \underline{\hbox to #1{\hfill#2\hfill}}}
\def\ZJUunderline{\@ifnextchar[\ZJU@underline\underline}
\newcommand\classification[1]{\def\ZJU@value@classification{#1}}
\newcommand\confidential[1]{\def\ZJU@value@confidential{#1}}
\newcommand\UDC[1]{\def\ZJU@value@UDC{#1}}
\newcommand\serialnumber[1]{\def\ZJU@value@serialnumber{#1}}
\newcommand\school[1]{\def\ZJU@value@school{#1}}
\newcommand\degree[1]{\def\ZJU@value@degree{#1}}
\renewcommand\title[2][\ZJU@value@title]{%
  \def\ZJU@value@title{#2}
  \def\ZJU@value@titlemark{\MakeUppercase{#1}}}
\renewcommand\author[1]{\def\ZJU@value@author{#1}}
\newcommand\supervisor[1]{\def\ZJU@value@supervisor{#1}}
\newcommand\supervisorinstitute[1]{\def\ZJU@value@supervisorinstitute{#1}}
\newcommand\major[1]{\def\ZJU@value@major{#1}}
\newcommand\submitdate[1]{\def\ZJU@value@submitdate{#1}}
\newcommand\defenddate[1]{\def\ZJU@value@defenddate{#1}}
\newcommand\institute[1]{\def\ZJU@value@institute{#1}}
\newcommand\chairman[1]{\def\ZJU@value@chairman{#1}}
\renewcommand\maketitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \bf\heiti\zihao{-5}
      \ZJU@label@classification~
      \ZJUunderline[100pt]{\ZJU@value@classification}
        \hfill
  %    \ZJU@label@confidential~
  %    \ZJUunderline[100pt]{\ZJU@value@confidential}
  %  \vskip 10pt
  %    \ZJU@label@UDC~
  %    \ZJUunderline[108pt]{\ZJU@value@UDC}
  %      \hfill
      \ZJU@label@serialnumber~
      \ZJUunderline[100pt]{\ZJU@value@serialnumber} \\
  \vspace{10mm}
   \includegraphics[width=80mm]{ZJDX.EPS} \\
     \vspace{8mm}
      %% \ZJU@value@school \\  \zihao{-1}
     \centerline{\bf\fangsong \Huge{\ZJU@value@degree\ZJU@label@thesis} }
     \vspace{5mm}
    \includegraphics[width=45mm]{STANDXB.EPS}    \\
    \vspace{10mm}
  %  \vskip \stretch{2}
 %     \bf\fangsong\zihao{3} \ZJUunderline{~\ZJU@value@title~}
 %   \vskip \stretch{1}
 %     \bf\kaishu\zihao{4} \ZJUunderline{~\ZJU@value@author~}
 %   \vskip \stretch{2}

\begin{tabular}{ll}
 \bf\fangsong\zihao{3} \ZJU@label@title & \fangsong\zihao{4} \ZJUunderline[300pt]{\ZJU@value@title} 
\end{tabular}
 \vspace{30mm}  % skip for 3cm

    \fangsong\zihao{4}
 %   \def\tabcolsep{1pt}
 %   \def\arraystretch{1.5}
    \begin{tabular}{llcrl}  
     \bf \ZJU@label@author &
      \multicolumn{4}{l}{\ZJUunderline[250pt]{\ZJU@value@author}} 
 %     \\
      \\[3mm]
     \bf \ZJU@label@supervisor &
      \multicolumn{4}{l}{\ZJUunderline[250pt]{\ZJU@value@supervisor}} 
 %   \\
    \\[3mm]
 %     & \multicolumn{4}{l}{\ZJUunderline[250pt]{\ZJU@value@advisorinstitute}}
 %   \\
 %  \bf \ZJU@label@degree &
 %     \multicolumn{4}{l}{\ZJUunderline[250pt]{\ZJU@value@degree}} 
 %    \\
   \bf \ZJU@label@major &
      \multicolumn{4}{l}{\ZJUunderline[250pt]{\ZJU@value@major}} 
  %  \\
    \\[3mm]
    \bf \ZJU@label@institute &
      \multicolumn{4}{l}{\ZJUunderline[250pt]{\ZJU@value@institute}}
    \\[3mm]
    \bf  \ZJU@label@submitdate &
      \multicolumn{4}{l}{\ZJUunderline[250pt]{\ZJU@value@submitdate}}
  %   \\
     \\[3mm]
     \bf  \ZJU@label@defenddate &
      \multicolumn{4}{l}{\ZJUunderline[250pt]{\ZJU@value@defenddate}}
 %   \\
 %     \ZJU@label@school &
 %     \multicolumn{4}{l}{\ZJUunderline[300pt]{\ZJU@value@school}}
 %   \\[15pt]
 %     \multicolumn{4}{r}{\ZJU@label@chairman} &
  %    \ZJUunderline[100pt]{\ZJU@value@chairman}
    \end{tabular}
  \end{center}
 % \clearpage
 % \if@twoside
 %   \thispagestyle{empty}
 %   \ifZJU@typeinfo
  %    \vspace*{\stretch{1}}
 %     \begin{footnotesize}
 %       \noindent
 %       Typeset by \LaTeXe{} at \CTEX@todayold \\
 %       With package \texttt{ZJUthesis} \ZJUfileversion{} of C\TeX{}.ORG
 %     \end{footnotesize}
  %  \fi
  %  \cleardoublepage
 % \fi
}
\newcommand\englishtitle[1]{\def\ZJU@value@englishtitle{#1}}
\newcommand\englishauthor[1]{\def\ZJU@value@englishauthor{#1}}
\newcommand\englishadvisor[1]{\def\ZJU@value@englishadvisor{#1}}
\newcommand\englishinstitute[1]{\def\ZJU@value@englishinstitute{#1}}
\newcommand\englishdate[1]{\def\ZJU@value@englishdate{#1}}
\newcommand\englishdegree[1]{\def\ZJU@value@englishdegree{#1}}
\newcommand\englishmajor[1]{\def\ZJU@value@englishmajor{#1}}
\newcommand\makeenglishtitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \vspace*{20pt}
      \sf\zihao{-1} \ZJU@value@englishtitle
    \vskip \stretch{1}
      \bf\zihao{4} \ZJU@value@englishauthor
    \vskip \stretch{1}
      \normalfont\zihao{4} \ZJU@label@englishsupervisor
    \vskip 3pt
      \normalfont\zihao{4} \ZJU@value@englishsupervisor
    \vskip \stretch{2}
      \normalfont\normalsize \ZJU@value@englishinstitute
    \vskip 30pt
      \normalfont\normalsize \ZJU@value@englishdate
    \vskip 20pt
      \it\normalsize \ZJU@label@englishstatement
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
}
\pagestyle{fancy}
  \fancyhf{}
  \fancyhead[RE]{\small \ZJU@value@titlemark}
  \fancyhead[LO]{\small \leftmark}
  \fancyhead[LE,RO]{\small ~\thepage~}
\newenvironment{abstract}
  {\Nchapter{\ZJU@label@abstract}}
  {}
\newcommand\keywords[1]{%
  \vspace{2ex}\noindent{\heiti \ZJU@label@keywords} #1}
\newenvironment{englishabstract}
  {\Nchapter{\ZJU@label@englishabstract}}
  {}
\newcommand\englishkeywords[1]{%
  \vspace{2ex}\noindent{\bf \ZJU@label@englishkeywords} #1}
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \Nchapter{\contentsname}%
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}
\newcommand\Nchapter[1]{%
  \if@mainmatter%
    \@mainmatterfalse%
    \chapter{#1}%
    \@mainmattertrue%
  \else
    \chapter{#1}%
  \fi}
\renewenvironment{thebibliography}[1]
     {\Nchapter{\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newenvironment{publications}[1]
     {\Nchapter{\ZJU@label@publications}%
      \@mkboth{\MakeUppercase\ZJU@label@publications}
              {\MakeUppercase\ZJU@label@publications}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `publications' environment}}%
      \endlist}
\newenvironment{resume}
  {\Nchapter{\ZJU@label@resume}}
  {}
\newenvironment{resumesection}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 2\ccwd}
   \item\relax}
  {\endlist}
\newenvironment{resumelist}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 4\ccwd
           \itemindent -2\ccwd
           \listparindent\itemindent}
   \item\relax}
  {\endlist}
\renewenvironment{thanks}
  {\Nchapter{\ZJU@label@thanks}}
  {}
\setcounter{secnumdepth}{4}
\newtheoremstyle{break}% name
  {}%      Space above, empty = `usual value'
  {}%      Space below
  {\itshape}% Body font
  {}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {.}%        Punctuation after thm head
  {\newline}% Space after thm head: \newline = linebreak
  {}%         Thm head spec
\endinput
%%
%% End of file `ZJUthesis.cls'.
