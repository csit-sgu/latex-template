\LoadClass[14pt]{extarticle}
% \RequirePackage[14pt]{extsizes}
\RequirePackage[
  		a4paper, mag=1000,
  		left=2.5cm, right=1.5cm, top=2cm, bottom=2cm, bindingoffset=0cm,
		headheight=0cm, footskip=1cm, headsep=0cm
	]{geometry}
\RequirePackage{setspace}
\RequirePackage{calc}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{caption}
\RequirePackage{graphicx}
\RequirePackage[inline]{enumitem}


% --------------------------------------------------------------------------%
% Input data
% --------------------------------------------------------------------------%
\def\chair#1{\gdef\@chair{#1}}\chair{\hbox to 3cm{\hrulefill}}
\def\worktype#1{\gdef\@worktype{#1}}
\def\worktitle{\@title}
\def\typework#1{\gdef\@typework{#1}}
\def\disserform#1{\gdef\@disserform{#1}}
\def\disserformP#1{\gdef\@disserformP{#1}}
\def\disserformR#1{\gdef\@disserformR{#1}}
\def\disserformV#1{\gdef\@disserformV{#1}}
\def\course#1{\gdef\@course{#1}}\course{2}
\def\group#1{\gdef\@group{#1}}\group{211}
\def\department#1{\gdef\@department{#1}}\department{\cyr\cyrf\cyra\cyrk%
\cyru\cyrl\cyrsftsn\cyrt\cyre\cyrt\cyra\ \CYRK\CYRN\cyri\CYRI\CYRT}
\def\otdelenie#1{\gdef\@otdelenie{#1}}
\def\studentName{\@author}
%\def\studentName#1{\gdef\@studentName{#1}}
\def\satitle#1{\gdef\@satitle{#1}}\satitle{\hbox to 3cm{\hrulefill}}
\def\saname#1{\gdef\@saname{#1}}\saname{\hbox to 3cm{\hrulefill}}
\def\critictitle#1{\gdef\@critictitle{#1}}\critictitle{\hbox to 3cm{\hrulefill}}
\def\criticname#1{\gdef\@criticname{#1}}\criticname{\hbox to 3cm{\hrulefill}}
\def\secrname#1{\gdef\@secrname{#1}}\secrname{\hbox to 3cm{\hrulefill}}
\def\chpretitle#1{\gdef\@chpretitle{#1}}\chpretitle{\hbox to 3cm{\hrulefill}}
\def\chtitle#1{\gdef\@chtitle{#1}}\chtitle{\hbox to 3cm{\hrulefill}}
\def\chname#1{\gdef\@chname{#1}}\chname{\hbox to 3cm{\hrulefill}}
\def\nirtitle#1{\gdef\@nirtitle{#1}}\nirtitle{\hbox to 3cm{\hrulefill}}
\def\nirname#1{\gdef\@nirname{#1}}\nirname{\hbox to 3cm{\hrulefill}}
%\def\year#1{\gdef\@year{#1}}
\def\spectype#1{\gdef\@spectype{#1}}
\def\spectyperod#1{\gdef\@spectyperod{#1}}
\def\workform#1{\gdef\@workform{#1}}
\def\practtype#1{\gdef\@practtype{#1}}\practtype{\cyr\cyru\cyrch\cyre\cyrb%
\cyrn\cyra\cyrya}
\def\term#1{\gdef\@term{#1}}\term{2}
\def\duration#1{\gdef\@duration{#1}}\duration{2}
\def\protnum#1{\gdef\@protnum{#1}}\protnum{\hbox to 1cm{\hrulefill}}
\def\protdate#1{\gdef\@protdate{#1}}\protdate{\hbox to 3cm{\hrulefill}}
\def\practStart#1{\gdef\@practStart{#1}}\practStart{\hbox to 3cm{\hrulefill}}
\def\practFinish#1{\gdef\@practFinish{#1}}\practFinish{\hbox to 3cm{\hrulefill}}
\def\reviewtype#1{\gdef\@reviewtype{#1}}\reviewtype{\CYRO\CYRT%
\CYRZ\CYRERY\CYRV}

\def\patitle#1{\gdef\@patitle{#1}}\patitle{\@satitle}
\def\paname#1{\gdef\@paname{#1}}\paname{\@saname}

\def\napravlenie#1{\gdef\@napravlenie{#1}}\napravlenie{\hbox to 3cm{\hrulefill}}
\def\Napravlenie{\@napravlenie}


\def\studenttitle#1{\gdef\@studenttitle{#1}}\studenttitle{\cyr\cyrs\cyrt%
\cyru\cyrd\cyre\cyrn\cyrt\cyra}
\def\studentdone#1{\gdef\@studentdone{#1}}\studentdone{\cyrp\cyrr\cyro%
\cyrsh\cyre\cyrd\cyrsh\cyre\cyrg\cyro}
\def\studentfemale{\studenttitle{\cyrs\cyrt\cyru\cyrd\cyre\cyrn\cyrt%
\cyrk\cyri}\studentdone{\cyrp\cyrr\cyro\cyrsh\cyre\cyrd\cyrsh%
\cyre\cyrishrt}}

%\newcommand{\MakeTitle}{}

\def\workname#1{\gdef\@workname{#1}}

%\hbox to 3cm{\hrulefill}

% --------------------------------------------------------------------------%


\newcommand{\signature}[2]{
\hbox to 7cm{#1\hfill} \hbox to 3cm{\hrulefill} \hbox to 6cm{\hfill #2}}

\newcommand{\inlinesignature}[2]{%
#1\qquad \hbox to 3cm{\hrulefill}\quad #2}


\newcommand{\signatureline}{}

% --------------------------------------------------------------------------%
\newcommand{\scaleUnivName}{0.97}

\DeclareOption{times}{%
    \renewcommand{\rmdefault}{ftm}
    \renewcommand{\scaleUnivName}{1.0}
}

\DeclareOption{spec}{%
    \spectype{\cyr\cyrs\cyrp\cyre\cyrc\cyri\cyra\cyrl\cyrsftsn\cyrn\cyro%
    \cyrs\cyrt\cyri}
    \spectyperod{\cyrs\cyrp\cyre\cyrc\cyri\cyra\cyrl\cyrsftsn\cyrn\cyro%
    \cyrs\cyrt\cyri}
    \workform{\cyr\CYRS\CYRP\CYRE\CYRC\CYRI\CYRA\CYRL\CYRI\CYRS\CYRT\CYRA}
    \disserform{\CYRD\CYRI\CYRP\CYRL\CYRO\CYRM\CYRN\CYRA\CYRYA\ \CYRR\CYRA%
    \CYRB\CYRO\CYRT\CYRA}
    \disserformP{\CYRD\CYRI\CYRP\CYRL\CYRO\CYRM\CYRN\CYRO\CYRISHRT\ \CYRR%
    \CYRA\CYRB\CYRO\CYRT\CYRE}
    \disserformR{\CYRD\CYRI\CYRP\CYRL\CYRO\CYRM\CYRN\CYRO\CYRISHRT\ \CYRR%
    \CYRA\CYRB\CYRO\CYRT\CYRERY}
    \disserformV{\CYRD\CYRI\CYRP\CYRL\CYRO\CYRM\CYRN\CYRU\CYRYU\ \CYRR\CYRA%
    \CYRB\CYRO\CYRT\CYRU}
}

\DeclareOption{bachelor}{%
    \spectype{\cyr\cyrn\cyra\cyrp\cyrr\cyra\cyrv\cyrl\cyre\cyrn\cyri\cyrya}
    \spectyperod{\cyr\cyrn\cyra\cyrp\cyrr\cyra\cyrv\cyrl\cyre\cyrn\cyri \cyryu}
    \workform{\cyr\CYRB\CYRA\CYRK\CYRA\CYRL\CYRA\CYRV\CYRR\CYRA}
    \disserform{\CYRB\CYRA\CYRK\CYRA\CYRL\CYRA\CYRV\CYRR\CYRS\CYRK\CYRA%
    \CYRYA\ \CYRR\CYRA\CYRB\CYRO\CYRT\CYRA}
    \disserformP{\CYRB\CYRA\CYRK\CYRA\CYRL\CYRA\CYRV\CYRR\CYRS\CYRK\CYRO%
    \CYRISHRT\ \CYRR\CYRA\CYRB\CYRO\CYRT\CYRE}
    \disserformR{\CYRB\CYRA\CYRK\CYRA\CYRL\CYRA\CYRV\CYRR\CYRS\CYRK\CYRO%
    \CYRISHRT\ \CYRR\CYRA\CYRB\CYRO\CYRT\CYRERY}
    \disserformV{\CYRB\CYRA\CYRK\CYRA\CYRL\CYRA\CYRV\CYRR\CYRS\CYRK\CYRU%
    \CYRYU\ \CYRR\CYRA\CYRB\CYRO\CYRT\CYRU}
}

\DeclareOption{master}{%
    \spectype{\cyr\cyrn\cyra\cyrp\cyrr\cyra\cyrv\cyrl\cyre\cyrn\cyri\cyrya}
    \spectyperod{\cyr\cyrn\cyra\cyrp\cyrr\cyra\cyrv\cyrl\cyre\cyrn\cyri \cyryu}
    \workform{\cyr\CYRM\CYRA\CYRG\CYRI\CYRS\CYRT\CYRR\CYRA}
    \disserform{\CYRM\CYRA\CYRG\CYRI\CYRS\CYRT\CYRE\CYRR\CYRS\CYRK\CYRA%
    \CYRYA\ \CYRR\CYRA\CYRB\CYRO\CYRT\CYRA}
    \disserformP{\CYRM\CYRA\CYRG\CYRI\CYRS\CYRT\CYRE\CYRR\CYRS\CYRK\CYRO%
    \CYRISHRT\ \CYRR\CYRA\CYRB\CYRO\CYRT\CYRE}
    \disserformR{\CYRM\CYRA\CYRG\CYRI\CYRS\CYRT\CYRE\CYRR\CYRS\CYRK\CYRO%
    \CYRISHRT\ \CYRR\CYRA\CYRB\CYRO\CYRT\CYRERY}
    \disserformV{\CYRM\CYRA\CYRG\CYRI\CYRS\CYRT\CYRE\CYRR\CYRS\CYRK\CYRU%
    \CYRYU\ \CYRR\CYRA\CYRB\CYRO\CYRT\CYRU}
}

\DeclareOption{coursework}{%
    \worktype{\cyr\CYRK\cyru\cyrr\cyrs\cyro\cyrv\cyra\cyrya\ \cyrr\cyra\cyrb%
    \cyro\cyrt\cyra}
    \renewcommand{\maketitle}{\CDMakeTitle}
    \workname{\MakeUppercase{\@worktype}}
    \typework{\cyr\cyrn\cyra\cyrp\cyri\cyrs\cyra\cyrn\cyra}
}

\DeclareOption{nirjournal}{%
    \worktype{\cyrd\cyrn\cyre\cyrv\cyrn\cyri\cyrk\ \cyrn\cyri\cyrr}
    \renewcommand{\maketitle}{\NIRJournalMakeTitle}
    \workname{\MakeUppercase{\@worktype}}
    \typework{\cyr\cyrn\cyra\cyrp\cyri\cyrs\cyra\cyrn\cyra}
}

\DeclareOption{diploma}{%
    \worktype{\cyr\CYRV\cyrery\cyrp\cyru\cyrs\cyrk\cyrn\cyra\cyrya\ \cyrk\cyrv%
    \cyra\cyrl\cyri\cyrf\cyri\cyrk\cyra\cyrc\cyri\cyro\cyrn\cyrn\cyra%
    \cyrya\ \cyrr\cyra\cyrb\cyro\cyrt\cyra}
    \worktype{\ \cyrr\cyra\cyrb\cyro\cyrt\cyra}
    \renewcommand{\maketitle}{\CDMakeTitle}
    \workname{\MakeUppercase{\@disserform}}
    \typework{\cyr\cyrn\cyra\cyrp\cyri\cyrs\cyra\cyrn\cyra}
}

\DeclareOption{autoref}{%
    \workname{\cyr\CYRA\CYRV\CYRT\CYRO\CYRR\CYRE\CYRF\CYRE\CYRR\CYRA\CYRT\ %
    \MakeUppercase{\@disserformR}}
    \worktype{\ \cyrr\cyra\cyrb\cyro\cyrt\cyra}
    \renewcommand{\maketitle}{\CDMakeTitle}
    %\workname{\MakeUppercase{\@disserform}}
    \typework{\cyr\cyrn\cyra\cyrp\cyri\cyrs\cyra\cyrn\cyra}
}

\DeclareOption{nir}{%
    \workname{\cyr\CYRO\CYRT\CYRCH\CYRE\CYRT\ \CYRO\ \CYRN\CYRA\CYRU\CYRCH%
    \CYRN\CYRO-\CYRI\CYRS\CYRS\CYRL\CYRE\CYRD\CYRO\CYRV\CYRA\CYRT\CYRE\CYRL%
    \CYRSFTSN\CYRS\CYRK\CYRO\CYRISHRT\ \CYRR\CYRA\CYRB\CYRO\CYRT\CYRE}
    \worktype{\ \cyrr\cyra\cyrb\cyro\cyrt\cyra}
    \renewcommand{\maketitle}{\CDMakeTitle}
    %\workname{\MakeUppercase{\@disserform}}
    \typework{\cyr\cyrn\cyra\cyrp\cyri\cyrs\cyra\cyrn\cyra}
}

\DeclareOption{pract}{%
    \worktype{\cyr\CYRO\cyrt\cyrch\cyre\cyrt\ \cyro\ \cyrp\cyrr\cyra\cyrk\cyrt%
    \cyri\cyrk\cyre}
    \renewcommand{\maketitle}{\MakeTitlePr}
    \typework{\cyr\cyrn\cyra\cyrp\cyri\cyrs\cyra\cyrn}
}

\DeclareOption{review}{%
    \reviewtype{\CYRO\CYRT\CYRZ\CYRERY\CYRV}
    \worktype{\cyrn\cyra\cyru\cyrch\cyrn\cyro\cyrg\cyro\ \cyrr\cyru\cyrk%
    \cyro\cyrv\cyro\cyrd\cyri\cyrt\cyre\cyrl\cyrya\ \cyro\ \cyrv\cyrery%
    \cyrp\cyru\cyrs\cyrk\cyrn\cyro\cyrishrt\ \cyrk\cyrv\cyra\cyrl\cyri\cyrf%
    \cyri\cyrk\cyra\cyrc\cyri\cyro\cyrn\cyrn\cyro\cyrishrt\ \cyrr\cyra\cyrb%
    \cyro\cyrt\cyre}
    \workname{\cyr\cyrn\cyra\cyru\cyrch\cyrn\cyro\cyrg\cyro\ \cyrr\cyru\cyrk%
    \cyro\cyrv\cyro\cyrd\cyri\cyrt\cyre\cyrl\cyrya\ \cyro\ \MakeLowercase{\@disserformP}}
    %\workname{\@worktype\ \MakeLowercase{\@workform}}
    \renewcommand{\maketitle}{\MakeTitleReview}
    \renewcommand{\signatureline}{%
        \par\noindent%
        \CYRN\cyra\cyru\cyrch\cyrn\cyrery\cyrishrt\ \cyrr\cyru\cyrk\cyro\cyrv%
        \cyro\cyrd\cyri\cyrt\cyre\cyrl\cyrsftsn\\%
        \signature{\@satitle}{\@saname}\\%
    }
}

\DeclareOption{assignment}{%
    \reviewtype{\CYRZ\CYRA\CYRD\CYRA\CYRN\CYRI\CYRE}
    \worktype{\cyrn\cyra\ \cyrv\cyrery\cyrp\cyru\cyrs\cyrk\cyrn\cyru%
    \cyryu\ \cyrk\cyrv\cyra\cyrl\cyri\cyrf\cyri\cyrk\cyra\cyrc\cyri\cyro%
    \cyrn\cyrn\cyru\cyryu\ \cyrr\cyra\cyrb\cyro\cyrt\cyru}
    \workname{\cyr\cyrn\cyra\ \MakeLowercase{\@disserformV}}
    %\workname{\@worktype\ \MakeLowercase{\@workform}}
    \renewcommand{\maketitle}{\MakeTitleAssign}
    \renewcommand{\signatureline}{%

        \vfill%
        \noindent%
        \textbf{\CYRS\cyrr\cyro\cyrk\ \cyrp\cyrr\cyre\cyrd\cyro\cyrs\cyrt\cyra%
        \cyrv\cyrl\cyre\cyrn\cyri\cyrya\ \cyrr\cyra\cyrb\cyro\cyrt\cyrery:}\ \@practFinish

        \vspace{2em}\raggedright
        \noindent \CYRR\cyra\cyrs\cyrs\cyrm\cyro\cyrt\cyrr\cyre\cyrn\cyro\ %
        \cyrn\cyra\ \cyrz\cyra\cyrs\cyre\cyrd\cyra\cyrn\cyri\cyri\ \cyrk\cyra%
        \cyrf\cyre\cyrd\cyrr\cyrery\ \@chair

        \vspace{1em}
        \CYRP\cyrr\cyro\cyrt\cyro\cyrk\cyro\cyrl\ \textnumero\ \@protnum\ \cyro%
        \cyrt\ \@protdate

        \vspace{1em}
        \raggedright
        \noindent
        \inlinesignature{\CYRS\cyre\cyrk\cyrr\cyre\cyrt\cyra\cyrr\cyrsftsn}{\@secrname}

        \vspace{2em}
        \noindent\raggedright
        \CYRD\cyra\cyrt\cyra\ \cyrv\cyrery\cyrd\cyra\cyrch\cyri\ \cyrz\cyra%
        \cyrd\cyra\cyrn\cyri\cyrya\ \@practStart

        \vspace{1em}
        \noindent\raggedright
        \inlinesignature{\CYRZ\cyra\cyrd\cyra\cyrn\cyri\cyre\ \cyrp\cyro\cyrl%
        \cyru\cyrch\cyri\cyrl}{\hbox to 3cm{\hrulefill}}

        \vspace{1cm}
    }
}

\DeclareOption{critique}{%
    \reviewtype{\CYRR\CYRE\CYRC\CYRE\CYRN\CYRZ\CYRI\CYRYA}
    \worktype{\cyrn\cyra\ \cyrv\cyrery\cyrp\cyru\cyrs\cyrk\cyrn\cyru%
    \cyryu\ \cyrk\cyrv\cyra\cyrl\cyri\cyrf\cyri\cyrk\cyra\cyrc\cyri\cyro%
    \cyrn\cyrn\cyru\cyryu\ \cyrr\cyra\cyrb\cyro\cyrt\cyru}
    \workname{\cyr\cyrn\cyra\ \MakeLowercase{\@disserformV}}
    %\workname{\@worktype\ \MakeLowercase{\@workform}}
    \renewcommand{\maketitle}{\MakeTitleReview}
    \renewcommand{\signatureline}{%
        \par\noindent%
        \CYRR\cyre\cyrc\cyre\cyrn\cyrz\cyre\cyrn\cyrt\\%
        \signature{\@critictitle}{\@criticname}\\%
    }
}


\DeclareOption{referat}{%
    \worktype{\cyr\CYRR\cyre\cyrf\cyre\cyrr\cyra\cyrt}
    \workname{\MakeUppercase{\@worktype}}
    \renewcommand{\maketitle}{\RefMakeTitle}
    \typework{\cyr\cyrn\cyra\cyrp\cyri\cyrs\cyra\cyrn}
}

\DeclareOption{otchet}{%
    \worktype{\cyro\CYRT\cyrch\cyryo\cyrt}
    \workname{\MakeUppercase{\@worktype}}
    \renewcommand{\maketitle}{\RefMakeTitle}
    \typework{\cyr\cyrn\cyra\cyrp\cyri\cyrs\cyra\cyrn}
}

\DeclareOption{digital}{%
    \worktype{\CYRI\CYRT\CYRO\CYRG\CYRO\CYRV\CYRA\CYRYA\ \CYRA\CYRT\CYRT\CYRE\CYRS\CYRT\CYRA\CYRC\CYRI\CYRO\CYRN\CYRA\CYRYA\ \CYRR\CYRA\CYRB\CYRO\CYRT\CYRA}
    \workname{\MakeUppercase{\@worktype}}
    \renewcommand{\maketitle}{\DigitalMakeTitle}
    \typework{\cyr\cyrn\cyra\cyrp\cyri\cyrs\cyra\cyrn\cyra}
}

\DeclareOption{och}{%
    \otdelenie{\cyr\cyro\cyrch\cyrn\cyro\cyrishrt\ \cyrf\cyro\cyrr\cyrm%
    \cyrery\ \cyro\cyrb\cyru\cyrch\cyre\cyrn\cyri\cyrya}
}

\DeclareOption{zaoch}{%
   \otdelenie{\cyr\cyrz\cyra\cyro\cyrch\cyrn\cyro\cyrishrt\ \cyrf\cyro\cyrr%
   \cyrm\cyrery\ \cyro\cyrb\cyru\cyrch\cyre\cyrn\cyri\cyrya}
}

\ExecuteOptions{coursework,och,bachelor}
\ProcessOptions

% --------------------------------------------------------------------------%
\newcommand*{\hm}[1]{#1\nobreak\discretionary{}%
{\hbox{$\mathsurround=0pt #1$}}{}}
% --------------------------------------------------------------------------%

% --------------------------------------------------------------------------%

\onehalfspacing
\parindent=1.25cm
\pagestyle{headings}
\renewcommand{\@oddhead}{}
\renewcommand{\@oddfoot}{\hfil \thepage}

% --------------------------------------------------------------------------%
% Table and figure numbering by sections
% --------------------------------------------------------------------------%
\newif\if@secNumbering\@secNumberingfalse
\newcommand{\secNumbering}{
    \renewcommand{\thefigure}{\arabic{section}.\arabic{figure}}
    \renewcommand{\thetable}{\arabic{section}.\arabic{table}}
    \renewcommand{\theequation}{\arabic{section}.\arabic{equation}}
    \@addtoreset{figure}{section}
    \@addtoreset{table}{section}
    \@addtoreset{equation}{section}
    \@secNumberingtrue
}
% --------------------------------------------------------------------------%

% --------------------------------------------------------------------------%
% Table and figure captions
% --------------------------------------------------------------------------%
\def\CaptionName#1{\gdef\@captionname{#1}}
\newlength\tmp %10cm
\setlength{\tmp}{1ex}
\setlength{\belowcaptionskip}{1ex}
\setlength{\abovecaptionskip}{1ex}

\captionsetup[figure]{name=\CYRR\cyri\cyrs\cyru\cyrn\cyro\cyrk, labelsep=endash,
                justification=centering, font={small}, skip=\abovecaptionskip, position=below}
\captionsetup[table]{name=\CYRT\cyra\cyrb\cyrl\cyri\cyrc\cyra, labelsep=endash, format=plain,
                justification=RaggedRight, singlelinecheck=false, font={small}, position=top}

% --------------------------------------------------------------------------%
% Table of contents
% --------------------------------------------------------------------------%
\renewcommand{\tableofcontents}%
{\structformat\section*{\uppercase{\cyr\CYRS\CYRO\CYRD\CYRE\CYRR\CYRZH\CYRA%
\CYRN\CYRI\CYRE}}\secformat\@starttoc{toc}
\thispagestyle{empty}}

\renewcommand{\@dotsep}{1.5}
\renewcommand{\@pnumwidth}{1.0em}

\newcommand{\l@abcd}[2]{{\@dottedtocline{0}{0pt}{0pt}{#1}{#2}}}

\renewcommand{\l@section}{\@dottedtocline{1}{0em}{1.5em}}
\renewcommand{\l@subsection}{\@dottedtocline{2}{1.5em}{2.3em}}
% --------------------------------------------------------------------------%

% --------------------------------------------------------------------------%
% Sections, subsections
% --------------------------------------------------------------------------%
% Numbering
\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}

\newcommand{\sectionbreak}{\clearpage}

% Contents, intro, conclusion
\newcommand{\structformat}
{
    \titlespacing{\section}
    {0cm}{3ex plus 1ex minus .2ex}{1.4ex plus.2ex}
    \titleformat{\section}[block]
    {\centering\bfseries}
    {\thesection}{0ex}{}
}

% Sections, subsections
\newcommand{\secformat}
{
    \titlespacing{\section}
    {0cm}{3ex plus 1ex minus .2ex}{0.4ex plus.2ex}
    \titleformat{\section}[block]
    {\hspace{1.25cm}\raggedright\bfseries}
    {\thesection}{1ex}{}
}

\newif\if@hyperrefloaded\@hyperrefloadedfalse
\AtBeginDocument{\@ifpackageloaded{hyperref}%
    {\@hyperrefloadedtrue}{\@hyperrefloadedfalse}%
}

%\RequirePackage{ifthen}
\newcommand{\starsection}[1]{
    \structformat
    \section*{#1}%
    \if@hyperrefloaded
        \phantomsection
    \fi
    \addcontentsline{toc}{section}{#1}
    \setcounter{section}{0}
    \secformat
}


\setcounter{section}{0}
\secformat

% For Assembly lab works

\newcommand{\task}{\starsection{\CYRT\cyre\cyrk\cyrs\cyrt\ %
\cyrz\cyra\cyrd\cyra\cyrn\cyri\cyrya}}

\newcommand{\code}{\starsection{\CYRT\cyre\cyrk\cyrs\cyrt\cyrery\ %
\cyrp\cyrr\cyro\cyrg\cyrr\cyra\cyrm\cyrm\ %
\cyrn\cyra\ \cyra\cyrs\cyrs\cyre\cyrm\cyrb\cyrl\cyre\cyrr\cyre}}

\newcommand{\commandfiles}{\starsection{\CYRT\cyre\cyrk\cyrs\cyrt\cyrery\ %
\cyrk\cyro\cyrm\cyra\cyrn\cyrd\cyrn\cyrery\cyrh\ %
\cyrf\cyra\cyrishrt\cyrl\cyro\cyrv}}

\newcommand{\trassirovka}{\starsection{\CYRT\cyra\cyrb\cyrl\cyri\cyrc\cyrery\ %
\cyrt\cyrr\cyra\cyrs\cyrs\cyri\cyrr\cyro\cyrv\cyrk\cyri\ %
\cyrp\cyrr\cyro\cyrg\cyrr\cyra\cyrm\cyrm}}

\newcommand{\answers}{\starsection{\CYRO\cyrt\cyrv\cyre\cyrt\cyrery\ %
\cyrn\cyra\ \cyrk\cyro\cyrn\cyrt\cyrr\cyro\cyrl\cyrsftsn\cyrn\cyrery\cyre\ %
\cyrv\cyro\cyrp\cyrr\cyro\cyrs\cyrery}}

\newcommand{\intro}{\starsection{\cyr\CYRV\CYRV\CYRE\CYRD\CYRE%
\CYRN\CYRI\CYRE}}
\newcommand{\abbreviations}{\starsection{\CYRO\CYRB\CYRO\CYRZ\CYRN\CYRA%
\CYRCH\CYRE\CYRN\CYRI\CYRYA\ \CYRI\ \CYRS\CYRO\CYRK\CYRR\CYRA\CYRSHCH%
\CYRE\CYRN\CYRI\CYRYA}}
\newcommand{\definitions}{\starsection{\CYRO\CYRP\CYRR\CYRE\CYRD\CYRE%
\CYRL\CYRE\CYRN\CYRI\CYRYA}}
\newcommand{\defabbr}{\starsection{\CYRO\CYRP\CYRR\CYRE\CYRD\CYRE\CYRL%
\CYRE\CYRN\CYRI\CYRYA, \CYRO\CYRB\CYRO\CYRZ\CYRN\CYRA\CYRCH\CYRE\CYRN%
\CYRI\CYRYA\ \CYRI\ \CYRS\CYRO\CYRK\CYRR\CYRA\CYRSHCH\CYRE\CYRN\CYRI\CYRYA}}
\newcommand{\conclusion}{\starsection{\cyr\CYRZ\CYRA\CYRK\CYRL\CYRYU%
\CYRCH\CYRE\CYRN\CYRI\CYRE}}
\newcommand{\theory}{\starsection{\CYRT\CYRE\CYRO\CYRR\CYRE\CYRT\CYRI\CYRCH\CYRE\CYRS\CYRK\CYRA\CYRYA\ \CYRCH\CYRA\CYRS\CYRT\CYRSFTSN}}
\newcommand{\pract}{\starsection{\CYRP\CYRR\CYRA\CYRK\CYRT\CYRI\CYRCH\CYRE\CYRS\CYRK\CYRA\CYRYA\ \CYRCH\CYRA\CYRS\CYRT\CYRSFTSN}}

% Section and subsection parameters
\titlespacing{\section}
{0cm}{3ex plus 1ex minus .2ex}{0.4ex plus.2ex}

\titleformat{\subsection}[block]
{\hspace{1.25cm}\normalfont\bfseries}
{\thesubsection}{1ex}{}
\titlespacing{\subsection}
{0cm}{2ex plus 1ex minus .2ex}{.4ex plus.2ex}

\titleformat{\subsubsection}[block]
{\hspace{1.25cm}\normalfont}
{\thesubsubsection}{1ex}{}
\titlespacing{\subsubsection}
{0cm}{2ex plus 1ex minus .2ex}{.4ex plus.2ex}

% --------------------------------------------------------------------------%

% --------------------------------------------------------------------------%


%\AddEnumerateCounter{\Asbuk}{\@Asbuk}{\CYRM}
%\AddEnumerateCounter{\asbuk}{\@asbuk}{\cyrm}

\makeatletter
\def\redeflsection{\def\l@section{\@dottedtocline{1}{0em}{10em}}}
\renewcommand{\appendix}{\par%

    \renewcommand{\secNumbering}{
        \renewcommand{\thefigure}{\Asbuk{section}.\arabic{figure}}
        \renewcommand{\thetable}{\Asbuk{section}.\arabic{table}}
        \renewcommand{\theequation}{\Asbuk{section}.\arabic{equation}}
        \@addtoreset{figure}{section}
        \@addtoreset{table}{section}
        \@addtoreset{equation}{section}

    }
    \if@secNumbering
        \secNumbering
    \fi
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \renewcommand{\appendixname}{\cyr\CYRP\CYRR\CYRI\CYRL\CYRO\CYRZH\CYRE%
    \CYRN\CYRI\CYRE}%
  \def\sectionname{\appendixname}%
  \addtocontents{toc}{\protect\redeflsection}%
  \gdef\thesection{\Asbuk{section}}%
  \titlespacing{\section}
  %{0cm}{1ex plus 0.1ex minus .2ex}{1.1ex plus.1ex}
    {0cm}{3ex plus 1ex minus .2ex}{0.4ex plus.2ex}
  \titleformat{\section}[display]
    {\centering\normalfont\bfseries}
  {\appendixname\hspace{1ex}\thesection}{0ex}{}


  \titlecontents{section}
  [3ex]
  {\hspace{-3ex}}
  {\appendixname~\thecontentslabel\hspace{2ex}}
  {\hspace{2.3em}}
  {\titlerule*[0.98ex]{.}\contentspage}

}



% --------------------------------------------------------------------------%
% Title pages
% --------------------------------------------------------------------------%
%\newcommand{\shapka}{{\centering \CYRM\CYRI\CYRN\CYRO\CYRB\CYRR\CYRN\CYRA%
%\CYRU\CYRK\CYRI\ \CYRR\CYRO\CYRS\CYRS\CYRI\CYRI\\ %
%\CYRF\cyre\cyrd\cyre\cyrr\cyra\cyrl\cyrsftsn\cyrn\cyro\cyre\ \cyrg\cyro%
%\cyrs\cyru\cyrd\cyra\cyrr\cyrs\cyrt\cyrv\cyre\cyrn\cyrn\cyro\cyre\ %
%\cyrb\cyryu\cyrd\cyrzh\cyre\cyrt\cyrn\cyro\cyre\ \cyro\cyrb\cyrr\cyra%
%\cyrz\cyro\cyrv\cyra\cyrt\cyre\cyrl\cyrsftsn\cyrn\cyro\cyre\ \cyru%
%\cyrch\cyrr\cyre\cyrzh\cyrd\cyre\cyrn\cyri\cyre\ \cyrv\cyrery\cyrs%
%\cyrsh\cyre\cyrg\cyro\ \cyro\cyrb\cyrr\cyra\cyrz%
%\cyro\cyrv\cyra\cyrn\cyri\cyrya\\
%\textbf{<<\CYRS\CYRA\CYRR\CYRA\CYRT\CYRO\CYRV\CYRS\CYRK\CYRI\CYRISHRT\ %
%\CYRN\CYRA\CYRC\CYRI\CYRO\CYRN\CYRA\CYRL\CYRSFTSN\CYRN\CYRERY%
%\CYRISHRT\ \CYRI\CYRS\CYRS\CYRL\CYRE\CYRD\CYRO\CYRV\CYRA\CYRT\CYRE\CYRL%
%\CYRSFTSN\CYRS\CYRK\CYRI\CYRISHRT\ %
%\CYRG\CYRO\CYRS\CYRU\CYRD\CYRA\CYRR\CYRS\CYRT\CYRV\CYRE\CYRN\CYRN\CYRERY%
%\CYRISHRT\ \CYRU\CYRN\CYRI\CYRV\CYRE\CYRR\CYRS\CYRI\CYRT\CYRE\CYRT\ %
%\CYRI\CYRM\CYRE\CYRN\CYRI~\CYRN.\,\CYRG.\,\CYRCH\CYRE\CYRR\CYRN\CYRERY%
%\CYRSH\CYRE\CYRV\CYRS\CYRK\CYRO\CYRG\CYRO>>}\\}}

%\newcommand{\shapka}{{\centering \CYRM\CYRI\CYRN\CYRO\CYRB\CYRR\CYRN\CYRA%
%\CYRU\CYRK\CYRI\ \CYRR\CYRO\CYRS\CYRS\CYRI\CYRI\\ \hspace{-1em}%
%\CYRF\cyre\cyrd\cyre\cyrr\cyra\cyrl\cyrsftsn\cyrn\cyro\cyre\ \cyrg\cyro%
%\cyrs\cyru\cyrd\cyra\cyrr\cyrs\cyrt\cyrv\cyre\cyrn\cyrn\cyro\cyre\ %
%\cyrb\cyryu\cyrd\cyrzh\cyre\cyrt\cyrn\cyro\cyre\ \cyro\cyrb\cyrr\cyra%
%\cyrz\cyro\cyrv\cyra\cyrt\cyre\cyrl\cyrsftsn\cyrn\cyro\cyre\ \cyru%
%\cyrch\cyrr\cyre\cyrzh\cyrd\cyre\cyrn\cyri\cyre\ \\\cyrv\cyrery\cyrs%
%\cyrsh\cyre\cyrg\cyro\ \cyro\cyrb\cyrr\cyra\cyrz%
%\cyro\cyrv\cyra\cyrn\cyri\cyrya\\\hspace{-2em}
%{
%\textbf{<<\CYRS\CYRA\CYRR\CYRA\CYRT\CYRO\CYRV\CYRS\CYRK\CYRI\CYRISHRT\ %
%\CYRN\CYRA\CYRC\CYRI\CYRO\CYRN\CYRA\CYRL\CYRSFTSN\CYRN\CYRERY%
%\CYRISHRT\ \CYRI\CYRS\CYRS\CYRL\CYRE\CYRD\CYRO\CYRV\CYRA\CYRT\CYRE\CYRL%
%\CYRSFTSN\CYRS\CYRK\CYRI\CYRISHRT}} \\%
%{\textbf{\CYRG\CYRO\CYRS\CYRU\CYRD\CYRA\CYRR\CYRS\CYRT\CYRV\CYRE\CYRN\CYRN\CYRERY%
%\CYRISHRT\ \CYRU\CYRN\CYRI\CYRV\CYRE\CYRR\CYRS\CYRI\CYRT\CYRE\CYRT}} \\%
%{\textbf{\CYRI\CYRM\CYRE\CYRN\CYRI~\CYRN.\,\CYRG.\,\CYRCH\CYRE\CYRR\CYRN\CYRERY%
%\CYRSH\CYRE\CYRV\CYRS\CYRK\CYRO\CYRG\CYRO>>}}\\}}

\newcommand{\shapka}{{\centering \CYRM\CYRI\CYRN\CYRO\CYRB\CYRR\CYRN\CYRA%
\CYRU\CYRK\CYRI\ \CYRR\CYRO\CYRS\CYRS\CYRI\CYRI\\ %
\CYRF\cyre\cyrd\cyre\cyrr\cyra\cyrl\cyrsftsn\cyrn\cyro\cyre\ \cyrg\cyro%
\cyrs\cyru\cyrd\cyra\cyrr\cyrs\cyrt\cyrv\cyre\cyrn\cyrn\cyro\cyre\ %
\cyrb\cyryu\cyrd\cyrzh\cyre\cyrt\cyrn\cyro\cyre\ \cyro\cyrb\cyrr\cyra%
\cyrz\cyro\cyrv\cyra\cyrt\cyre\cyrl\cyrsftsn\cyrn\cyro\cyre\ \cyru%
\cyrch\cyrr\cyre\cyrzh\cyrd\cyre\cyrn\cyri\cyre\ \\\cyrv\cyrery\cyrs%
\cyrsh\cyre\cyrg\cyro\ \cyro\cyrb\cyrr\cyra\cyrz%
\cyro\cyrv\cyra\cyrn\cyri\cyrya\\[0.2em]

\centerline{\scalebox{\scaleUnivName}[1.0]{\parbox[t]{1.1\textwidth}
{\centering
\textbf{<<\CYRS\CYRA\CYRR\CYRA\CYRT\CYRO\CYRV\CYRS\CYRK\CYRI\CYRISHRT\ %
\CYRN\CYRA\CYRC\CYRI\CYRO\CYRN\CYRA\CYRL\CYRSFTSN\CYRN\CYRERY%
\CYRISHRT\ \CYRI\CYRS\CYRS\CYRL\CYRE\CYRD\CYRO\CYRV\CYRA\CYRT\CYRE\CYRL%
\CYRSFTSN\CYRS\CYRK\CYRI\CYRISHRT\ \\%
\CYRG\CYRO\CYRS\CYRU\CYRD\CYRA\CYRR\CYRS\CYRT\CYRV\CYRE\CYRN\CYRN\CYRERY%
\CYRISHRT\ \CYRU\CYRN\CYRI\CYRV\CYRE\CYRR\CYRS\CYRI\CYRT\CYRE\CYRT\ \\%
\CYRI\CYRM\CYRE\CYRN\CYRI~\CYRN.\,\CYRG.\,\CYRCH\CYRE\CYRR\CYRN\CYRERY%
\CYRSH\CYRE\CYRV\CYRS\CYRK\CYRO\CYRG\CYRO>>}}}}}}

\newcommand{\CDMakeTitle}
{
\thispagestyle{empty}
\shapka
%\vspace{0.5cm}
\begin{center}
%\parbox{8cm}{
%\raggedright
\CYRK\cyra\cyrf\cyre\cyrd\cyrr\cyra\ \@chair
%}
\end{center}

\vspace{14pt}
\vspace{1cm}
{\centering
\textbf{\MakeUppercase{\@title}}
\\[0.3cm]
{\@workname}

}

\vspace{1.5cm}
\begin{flushleft}
\@studenttitle\ \@course\ \cyrk\cyru\cyrr\cyrs\cyra\ \@group\ \cyrg%
\cyrr\cyru\cyrp\cyrp\cyrery\\
\@spectype\ \@napravlenie\\
\@department\\
\@author
\end{flushleft}
\vfill

\noindent
\CYRN\cyra\cyru\cyrch\cyrn\cyrery\cyrishrt\ \cyrr\cyru\cyrk\cyro\cyrv%
\cyro\cyrd\cyri\cyrt\cyre\cyrl\cyrsftsn\\
\signature{\@satitle}{\@saname}\\[14pt]
\CYRZ\cyra\cyrv\cyre\cyrd\cyru\cyryu\cyrshch\cyri\cyrishrt\ \cyrk\cyra%
\cyrf\cyre\cyrd\cyrr\cyro\cyrishrt\\
\signature{\@chtitle}{\@chname}

\vfill
{\centering{\cyr\CYRS\cyra\cyrr\cyra\cyrt\cyro\cyrv\ \@date}

}
\newpage
}

\newcommand{\NIRJournalMakeTitle}
{
\thispagestyle{empty}
\shapka
%\vspace{0.5cm}
\begin{center}
%\parbox{8cm}{
%\raggedright
\CYRK\cyra\cyrf\cyre\cyrd\cyrr\cyra\ \@chair
%}
\end{center}

\vspace{14pt}
\vspace{1cm}
{\centering
\textbf{\MakeUppercase{\@title}}
\\[0.3cm]
{\@workname}

}

\vspace{1.5cm}
\begin{flushleft}
\@studenttitle\ \@course\ \cyrk\cyru\cyrr\cyrs\cyra\ \@group\ \cyrg%
\cyrr\cyru\cyrp\cyrp\cyrery\\
\@spectype\ \@napravlenie\\
\@department\\
\@author
\end{flushleft}
\vfill

\noindent
\CYRR\cyru\cyrk\cyro\cyrv\cyro\cyrd\cyri\cyrt\cyre\cyrl\cyrsftsn\ \CYRN\CYRI\CYRR\\
\signature{\@nirtitle}{\@nirname}

\vfill
{\centering{\cyr\CYRS\cyra\cyrr\cyra\cyrt\cyro\cyrv\ \@date}

}
\newpage
}
% --------------------------------------------------------------------------%

% --------------------------------------------------------------------------%
% Title page of internship
% --------------------------------------------------------------------------%
\newcommand{\MakeTitlePr}
{
\thispagestyle{empty}
\begin{center}
\shapka
\end{center}
\vspace{0.5cm}


\begin{flushright}
  \parbox{7cm}{
    \begin{flushleft}
    \CYRU\CYRT\CYRV\CYRE\CYRR\CYRZH\CYRD\CYRA\CYRYU\\
    \CYRZ\cyra\cyrv.\cyrk\cyra\cyrf\cyre\cyrd\cyrr\cyro\cyrishrt,\\
    \@chtitle\\
    \hbox to 7cm{\hrulefill\ \@chname}
    \end{flushleft}
  }
\end{flushright}

\vspace{1cm}
\begin{center}\textbf{\MakeUppercase{\@worktype}}\end{center}
\begin{flushleft}
    \vspace{12pt}
    \@studenttitle\ \@course\ \cyrk\cyru\cyrr\cyrs\cyra\ \@group\ \cyrg%
    \cyrr\cyru\cyrp\cyrp\cyrery\ \@department\\
    \@author
    \vspace{0.5cm}


    \cyrv\cyri\cyrd\ \cyrp\cyrr\cyra\cyrk\cyrt\cyri\cyrk\cyri: \@practtype\\
    \cyrk\cyra\cyrf\cyre\cyrd\cyrr\cyra: \@chair\\
    \cyrk\cyru\cyrr\cyrs: \@course\\
    \cyrs\cyre\cyrm\cyre\cyrs\cyrt\cyrr: \@term\\
    \cyrp\cyrr\cyro\cyrd\cyro\cyrl\cyrzh\cyri\cyrt\cyre\cyrl\cyrsftsn\cyrn%
    \cyro\cyrs\cyrt\cyrsftsn: \@duration\ \cyrn\cyre\cyrd., \cyrs\ \@practStart\ \cyrg. \cyrp\cyro\ \@practFinish\ \cyrg.
\end{flushleft}
%\parindent=-0.2cm
\vspace{1cm}

\noindent
\CYRR\cyru\cyrk\cyro\cyrv\cyro\cyrd\cyri\cyrt\cyre\cyrl\cyrsftsn\ \cyrp%
\cyrr\cyra\cyrk\cyrt\cyri\cyrk\cyri\ \cyro\cyrt\ \cyru\cyrn\cyri\cyrv%
\cyre\cyrr\cyrs\cyri\cyrt\cyre\cyrt\cyra,\\[12pt]%
\signature{\@satitle}{\@saname}\\[14pt]
\CYRR\cyru\cyrk\cyro\cyrv\cyro\cyrd\cyri\cyrt\cyre\cyrl\cyrsftsn\ \cyrp%
\cyrr\cyra\cyrk\cyrt\cyri\cyrk\cyri\ \cyro\cyrt\ \cyro\cyrr\cyrg\cyra%
\cyrn\cyri\cyrz\cyra\cyrc\cyri\cyri\ (\cyru\cyrch\cyrr\cyre\cyrzh\cyrd%
\cyre\cyrn\cyri\cyrya, \cyrp\cyrr\cyre\cyrd\cyrp\cyrr\cyri\cyrya\cyrt%
\cyri\cyrya),\\[12pt]%
\signature{\@patitle}{\@paname}

\newpage
\thispagestyle{empty}
\vspace*{11cm}
\CYRT\cyre\cyrm\cyra\ \cyrp\cyrr\cyra\cyrk\cyrt\cyri\cyrk\cyri:<<\@title>>
\parindent=1.25cm
\newpage
}
% --------------------------------------------------------------------------%

% --------------------------------------------------------------------------%
% Title page of review
% --------------------------------------------------------------------------%
\newcommand{\MakeTitleReview}
{
\pagestyle{empty}
\begin{center}
\shapka
\end{center}


{
\centering
\textbf{\MakeUppercase{\@reviewtype}}\\[-0.3em]
\textbf{\@workname}\\[0.3em]
<<{\MakeUppercase{\@title}}>>

\@studenttitle\ \@course\ \cyrk\cyru\cyrr\cyrs\cyra\ %
\@department\\

\centering
{\@author}\\

\centering
\@studentdone\ \cyro\cyrb\cyru\cyrch\cyre\cyrn\cyri\cyre\ \cyrp%
\cyro\ \@spectyperod\ \@napravlenie

}
\vspace{2em}
}
% --------------------------------------------------------------------------%


% --------------------------------------------------------------------------%
% Title page of assignment
% --------------------------------------------------------------------------%
\newcommand{\MakeTitleAssign}
{
\pagestyle{empty}
\begin{center}
\shapka
\end{center}

{
\centering
\CYRK\cyra\cyrf\cyre\cyrd\cyrr\cyra\ \@chair


\vspace{6em}
\centering
\textbf{\MakeUppercase{\@reviewtype}\\%[-0.3em]
\@workname}

\vspace{0.3em}
\raggedright
\cyrp\cyro\ \@spectyperod\ \@napravlenie\\
\@studenttitle\ \@course\ \cyrk\cyru\cyrr\cyrs\cyra\ %
\@department\\
\MakeUppercase{\@author}\\
\textbf{\CYRT\cyre\cyrm\cyra\ \cyrr\cyra\cyrb\cyro\cyrt\cyrery:} <<{\MakeUppercase{\@title}}>>

}

\vfill

\noindent
\CYRN\cyra\cyru\cyrch\cyrn\cyrery\cyrishrt\ \cyrr\cyru\cyrk\cyro\cyrv%
\cyro\cyrd\cyri\cyrt\cyre\cyrl\cyrsftsn\\
\signature{\@satitle}{\@saname}\\[14pt]
\CYRZ\cyra\cyrv\cyre\cyrd\cyru\cyryu\cyrshch\cyri\cyrishrt\ \cyrk\cyra%
\cyrf\cyre\cyrd\cyrr\cyro\cyrishrt\\
\signature{\@chtitle}{\@chname}

\vfill
{\centering{\cyr\CYRS\cyra\cyrr\cyra\cyrt\cyro\cyrv\ \@date}

}
\newpage
\begin{center}\bf
C\cyro\cyrd\cyre\cyrr\cyrzh\cyra\cyrn\cyri\cyre\ \cyrr\cyra\cyrb%
\cyro\cyrt\cyrery
\end{center}
}
% --------------------------------------------------------------------------%

% --------------------------------------------------------------------------%
% Digital title page
% --------------------------------------------------------------------------%
\newcommand{\DigitalMakeTitle}
{
\thispagestyle{empty}
\shapka

\vspace{0.7cm}

\begin{center}
    \CYRC\cyri\cyrf\cyrr\cyro\cyrv\cyra\cyrya\ \cyrk\cyra\cyrf\cyre\cyrd\cyrr\cyra
\end{center}

\vspace{0.7cm}
{\centering
\textbf{\MakeUppercase{\@title}}
\\[0.3cm]
{\@workname}

}

\vspace{0.5cm}

\begin{flushleft}
\cyro\cyrb\cyru\cyrch\cyra\cyryu\cyrshch\cyri\cyrh\cyrs\cyrya\ \cyrp\cyro\ \CYRD\CYRP\CYRP\ \CYRP\CYRP\ <<\CYRV\cyre\cyrd\cyre\cyrn\cyri\cyre\ \cyrp\cyrr\cyro\cyrf\cyre\cyrs\cyrs\cyri\cyro\cyrn\cyra\cyrl\cyrsftsn\cyrn\cyro\cyrishrt\ \cyrd\cyre\cyrya\cyrt\cyre\cyrl\cyrsftsn\cyrn\cyro\cyrs\cyrt\cyri\ \cyrn\cyra\ \cyro\cyrs\cyrn\cyro\cyrv\cyre\ \cyrd\cyra\cyrn\cyrn\cyrery\cyrh:\ \cyrp\cyrr\cyri\cyrm\cyre\cyrn\cyre\cyrn\cyri\cyre\ \cyrm\cyre\cyrt\cyro\cyrd\cyro\cyrv\ \cyrm\cyra\cyrsh\cyri\cyrn\cyrn\cyro\cyrg\cyro\ \cyro\cyrb\cyru\cyrch\cyre\cyrn\cyri\cyrya>>\ \\
\@author
\end{flushleft}
\vfill

\noindent
\CYRN\cyra\cyru\cyrch\cyrn\cyrery\cyrishrt\ \cyrr\cyru\cyrk\cyro\cyrv\cyro\cyrd\cyri\cyrt\cyre\cyrl\cyrsftsn:\\
\signature{\@satitle}{\@saname}

\vspace{0.5cm}

\noindent
\CYRN\cyra\cyrs\cyrt\cyra\cyrv\cyrn\cyri\cyrk:\\
\signature{\@patitle}{\@paname}

\vspace{0.5cm}

\noindent
\CYRR\cyru\cyrk\cyro\cyrv\cyro\cyrd\cyri\cyrt\cyre\cyrl\cyrsftsn\ \CYRD\CYRP\CYRP\ \CYRP\CYRP:\\
\signatureline{\@chpretitle}{}\\
\signature{\@chtitle}{\@chname}

\vfill
{\centering{\cyr\CYRS\cyra\cyrr\cyra\cyrt\cyro\cyrv\ \@date}

}
\newpage
}
% --------------------------------------------------------------------------%

% --------------------------------------------------------------------------%
% Referat title page
% --------------------------------------------------------------------------%
\newcommand{\RefMakeTitle}
{
\thispagestyle{empty}
\shapka

\vspace{3cm}
{\centering
\textbf{\MakeUppercase{\@title}}
\\[0.3cm]
{\@workname}

}

\vspace{1.5cm}
\begin{flushleft}
\@studenttitle\ \@course\ \cyrk\cyru\cyrr\cyrs\cyra\ \@group\ \cyrg%
\cyrr\cyru\cyrp\cyrp\cyrery\\
\@spectype\ \@napravlenie\\
\@department\\
\@author
\end{flushleft}
\vfill

\noindent
\CYRP\cyrr\cyro\cyrv\cyre\cyrr\cyre\cyrn\cyro:\\
\signature{\@satitle}{\@saname}

\vfill
{\centering{\cyr\CYRS\cyra\cyrr\cyra\cyrt\cyro\cyrv\ \@date}

}
\newpage
}
% --------------------------------------------------------------------------%

% --------------------------------------------------------------------------%
% Last page
% --------------------------------------------------------------------------%
\newcommand{\lastpage}
{
\newpage
\thispagestyle{empty}
\vspace*{11cm}
\@worktype\ <<\@title>>\ \@typework\ \cyrm\cyrn\cyro\cyrishrt\ %
\cyrs\cyra\cyrm\cyro\cyrs\cyrt\cyro\cyrya\cyrt\cyre\cyrl\cyrsftsn\cyrn%
\cyro, \cyri\ \cyrn\cyra\ \cyrv\cyrs\cyre\ \cyri\cyrs\cyrt\cyro\cyrch%
\cyrn\cyri\cyrk\cyri, \cyri\cyrm\cyre\cyryu\cyrshch\cyri\cyre\cyrs%
\cyrya\ \cyrv\ \cyrr\cyra\cyrb\cyro\cyrt\cyre, \cyrd\cyra\cyrn\cyrery\ %
\cyrs\cyro\cyro\cyrt\cyrv\cyre\cyrs\cyrt\cyrv\cyru\cyryu\cyrshch\cyri%
\cyre\ \cyrs\cyrs\cyrery\cyrl\cyrk\cyri.\par
\parindent=9cm
\parbox{8cm}{
\begin{flushleft}
\hbox to 6cm{\hbox to 3.5cm{\hrulefill}/\hbox to 3.5cm{\hrulefill}/}
\end{flushleft}
}
}

\AddEnumerateCounter{\Asbuk}{\@Asbuk}{\CYRM}
\AddEnumerateCounter{\asbuk}{\@asbuk}{\cyrm}

% --------------------------------------------------------------------------%
% enumerations
% --------------------------------------------------------------------------%
\setlist{noitemsep}
%\setlist[1]{labelindent=\parindent} % < Usually a good idea
\setlist[itemize]{
%leftmargin=52pt,
rightmargin=0pt,
labelsep=7pt,
labelwidth=20pt,
itemindent=0pt,
listparindent=0pt,
topsep=0pt,%4pt plus 2pt minus 4pt,
partopsep=0pt,% plus 1pt minus 1pt,
parsep=0pt,% plus 1pt,
itemsep=0 pt%\parsep
}
\setlist[enumerate]{
%leftmargin=52pt,
rightmargin=0pt,
labelsep=5pt,
labelwidth=20pt,
itemindent=0pt,
listparindent=0pt,
topsep=0pt,%4pt plus 2pt minus 4pt,
partopsep=0pt,% plus 1pt minus 1pt,
parsep=0pt,% plus 1pt,
itemsep=0pt%\parsep
}
\setlist[itemize,1]{label={\normalfont\bfseries\textemdash}}
%\setlist[enumerate]{labelsep=*, leftmargin=1.5pc}
\setlist[enumerate,1]{label=\arabic*., ref=\arabic*}
\setlist[enumerate,2]{label=\emph{\asbuk*}), ref=\theenumi.\emph{\asbuk*}}
\setlist[enumerate,3]{label=\roman*., ref=\theenumii.\roman*}
\setlist[enumerate,4]{label=\Asbuk*., ref=\theenumiii.\Asbuk*}
%\setlist[description]{font=\sffamily\bfseries}

%%%\renewcommand{\@listI}{%
%%%\leftmargin=52pt
%%%\rightmargin=0pt
%%%\labelsep=7pt
%%%\labelwidth=20pt
%%%\itemindent=0pt
%%%\listparindent=0pt
%%%\topsep=4pt plus 2pt minus 4pt
%%%\partopsep=0pt plus 1pt minus 1pt
%%%\parsep=0pt plus 1pt
%%%\itemsep=\parsep}

%%%\renewcommand\theenumi  {\@arabic\c@enumi}
%%%\renewcommand\theenumii {\asbuk{enumii}}
%%%\renewcommand\theenumiii{\@roman\c@enumiii}
%%%\renewcommand\theenumiv {\Asbuk{enumiv}}
%%%\newcommand\atheenumi{\asbuk{enumi}}
%%%\newcommand\atheenumii{\asbuk{enumii}}
%%%\renewcommand\labelenumi  {\theenumi.}
%%%\renewcommand\labelenumii {\theenumii.}
%%%\renewcommand\labelenumiii{\theenumiii.}
%%%\renewcommand\labelenumiv {\theenumiv.}
%%%\renewcommand\p@enumii  {\theenumi}
%%%\renewcommand\p@enumiii {\theenumi.\theenumii}
%%%\renewcommand\p@enumiv  {\p@enumiii.\theenumiii}
%%%\renewcommand\labelitemi  {\normalfont\bfseries\textemdash}
%%%\renewcommand\labelitemii {\normalfont\bfseries\textendash}
%%%\renewcommand\labelitemiii{\textperiodcentered}
%%%\renewcommand\labelitemiv {\textasteriskcentered}
%%%
%%%\renewcommand{\@listI}{%
%%%\leftmargin=52pt
%%%\rightmargin=0pt
%%%\labelsep=7pt
%%%\labelwidth=20pt
%%%\itemindent=0pt
%%%\listparindent=0pt
%%%\topsep=4pt plus 2pt minus 4pt
%%%\partopsep=0pt plus 1pt minus 1pt
%%%\parsep=0pt plus 1pt
%%%\itemsep=\parsep}
% --------------------------------------------------------------------------%


% --------------------------------------------------------------------------%
% References
% --------------------------------------------------------------------------%
\makeatletter
\def\@biblabel#1{#1 }

\renewenvironment{thebibliography}[1]
{
  \starsection{\cyr\CYRS\CYRP\CYRI\CYRS\CYRO\CYRK\ \CYRI\CYRS\CYRP\CYRO\CYRL%
  \CYRSFTSN\CYRZ\CYRO\CYRV\CYRA\CYRN\CYRN\CYRERY\CYRH\ \CYRI\CYRS\CYRT%
  \CYRO\CYRCH\CYRN\CYRI\CYRK\CYRO\CYRV}
  \list{\@biblabel{\@arabic\c@enumiv}}%
  {\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \setlength{\itemsep}{0pt}
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

\makeatother
% --------------------------------------------------------------------------%
