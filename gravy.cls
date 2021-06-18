\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gravy}[Gravy]

\LoadClass{scrartcl}

\RequirePackage{amsmath}

\RequirePackage[no-math]{fontspec}

\setmainfont{Minion Pro}[
    BoldFont        = Minion Pro Bold,
    ItalicFont      = Minion Pro Italic,
    BoldItalicFont  = Minion Pro Bold Italic
]
\setsansfont{Scala Sans Pro}
\setmonofont{IBM Plex Mono} [
    Scale = 0.85
]

\RequirePackage[MnSymbol]{mathspec}

\setmathsfont(Digits,Latin,Greek)[Numbers={Lining,Proportional}]{Minion Pro}

\setminwhitespace[1200]

\newcommand{\nodate}{false}
\newcommand{\true}{true}
\newcommand{\false}{false}

\DeclareOption{nodate}{\renewcommand{\nodate}{true}}
\DeclareOption*{\PasOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions\relax

% update \@maketitle from /usr/local/texlive/2021/texmf-dist/tex/latex/koma-script/scrartcl.cls
% lines actually edited have a comment on them

\renewcommand*{\@maketitle}{%
\global\@topnum=\z@
\setparsizes{\z@}{\z@}{\z@\@plus 1fil}\par@updaterelative
\ifx\@titlehead\@empty \else
  \begin{minipage}[t]{\textwidth}
    \usekomafont{titlehead}{\@titlehead\par}%
  \end{minipage}\par
\fi
\null
\vskip 2em%
\begin{center}%
  \ifx\@subject\@empty \else
    {\usekomafont{subject}{\@subject \par}}%
    \vskip 1.5em
  \fi
  {\usekomafont{title}{\huge \@title \par}}%
  \vskip .5em
  {\ifx\@subtitle\@empty\else\usekomafont{subtitle}\@subtitle\par\fi}%
  \vskip 1em
  {%
    \usekomafont{author}{%
      \lineskip .5em%
      \begin{tabular}[t]{c}
        \@author
      \end{tabular}\par
    }%
  }%
  \ifx\nodate\true \else % ADDED THIS LINE, NOT IN ORIGINAL SCRARTCL
  \vskip 1em%
  {\usekomafont{date}{\@date \par}}%
  \fi % ADDED THIS LINE, NOT IN ORIGINAL SCRARTCL
  \vskip \z@ \@plus 1em
  {\usekomafont{publishers}{\@publishers \par}}%
  \ifx\@dedication\@empty \else
    \vskip 2em
    {\usekomafont{dedication}{\@dedication \par}}%
  \fi
\end{center}%
\par
\vskip 2em
}%
