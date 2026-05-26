% wilson-summary.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wilson-summary}[2026/05/25 Wilson Summary Notes]

% 1. Load the base class
\LoadClass[11pt]{article}
\RequirePackage[margin=0.8in]{geometry}
\setlength{\headheight}{14pt}
\addtolength{\topmargin}{-2pt}
\RequirePackage{amsmath, amssymb}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{parskip}
\RequirePackage{bm}
\RequirePackage{xcolor}
\RequirePackage{tikz}
\usetikzlibrary{shapes,arrows,positioning}
% ── TikZ style definitions ──
\colorlet{accent}{blue!60!black}
\colorlet{boxbg}{gray!10}
\colorlet{midgray}{gray!60}

\tikzset{
  axis/.style      = {->, thick},
  thinaxis/.style  = {->, thin},
  dot/.style       = {circle, fill, inner sep=1.5pt},
  vector/.style    = {->, thick, color=accent},
  curve/.style     = {thick, color=accent},
  label/.style     = {font=\small},
  smalllabel/.style= {font=\footnotesize},
  dashed line/.style = {dashed, thin, gray}
}

% In the .cls:
\newcommand{\chaptertitle}[1]{\def\@chaptertitle{#1}}
\newcommand{\coursename}[1]{\def\@coursename{#1}}
\newcommand{\semester}[1]{\def\@semester{#1}}
\RequirePackage{mdframed}

% \definition{Term} — bold label with italicised term
\newcommand{\definition}[1]{\textbf{Definition} (\textit{#1}).\ }

% \formula{Label} — bold label for named formulas
\newcommand{\formula}[1]{\textbf{Formula} (\textit{#1}).\ }

% keybox — ruled box for key results
\newenvironment{keybox}{%
  \vspace{4pt}
  \begin{mdframed}[linewidth=0.8pt, innertopmargin=6pt, innerbottommargin=6pt,
      innerleftmargin=8pt, innerrightmargin=8pt]
}{%
  \end{mdframed}
  \vspace{4pt}
}

% Safe defaults so the document compiles even if you forget to set them
\def\@chaptertitle{Chapter Title}
\def\@coursename{Course Name}
\def\@semester{Semester}

% Page Setup so that the fancy look professors enjoy is here
\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{\textbf{\@chaptertitle\ Summary Notes}}
\fancyfoot[C]{\@coursename\ --\ \@semester}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{0.5pt}
