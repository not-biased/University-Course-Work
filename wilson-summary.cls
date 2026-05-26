% wilson-summary.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wilson-summary}[2026/05/25 Wilson Summary Notes]

% 1. Load the base class
\LoadClass[11pt]{article}
\RequirePackage[margin=0.8in]{geometry}
\RequirePackage{amsmath, amssymb}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{parskip}
\RequirePackage{bm}
\RequirePackage{tikz}
\usetikzlibrary{shapes,arrows,positioning}

% In the .cls:
\newcommand{\chaptertitle}[1]{\def\@chaptertitle{#1}}
\newcommand{\coursename}[1]{\def\@coursename{#1}}
\newcommand{\semester}[1]{\def\@semester{#1}}

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
