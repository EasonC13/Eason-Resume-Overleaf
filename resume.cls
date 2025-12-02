\LoadClass[14pt]{extreport}

\usepackage{ifthen}
\usepackage[english]{babel}
\usepackage[utf8x]{inputenc}
\usepackage{geometry}
\usepackage{array}
\usepackage{enumitem}
\usepackage{hyperref}
\usepackage{xltabular}
\usepackage{graphicx}
\usepackage{outlines}
\usepackage[backend=bibtex,style=numeric-comp,sorting=ydnt,maxbibnames=99,defernumbers=true]{biblatex}

% Format bibliography for resume - compact style
\DeclareFieldFormat{labelnumberwidth}{\mkbibbrackets{#1}}
\setlength{\biblabelsep}{0.5em}
\defbibenvironment{bibliography}
  {\list
     {\printtext[labelnumberwidth]{\printfield{labelprefix}\printfield{labelnumber}}}
     {\setlength{\labelwidth}{\labelnumberwidth}%
      \setlength{\leftmargin}{\labelwidth}%
      \setlength{\labelsep}{\biblabelsep}%
      \addtolength{\leftmargin}{\labelsep}%
      \setlength{\itemsep}{0.5ex}%
      \setlength{\parsep}{\bibparsep}}}
  {\endlist}
  {\item}

\setlist[itemize]{leftmargin=*}
\linespread{1.15}
\geometry{a4paper,
    left={0.5in},
    top={0.4in}, 
    right={0.5in},
    bottom={0.4in}
}
\newcommand\clink[1]{{\usefont{T1}{lmtt}{m}{n} #1 }}
\pagenumbering{gobble}
\newenvironment{csection}[2]{
    \textbf{#1} 
    \vspace{0.15cm} 
    \hrule 
    {#2}
}{}
\newenvironment{frcontent}[4]{
    {
        \textbf{#1} \leavevmode\newline
        {\footnotesize	
            \ifthenelse{\equal{#2}{}}{}{{#2 \leavevmode\newline}}
            \ifthenelse{\equal{#3}{}}{}{{#3 \leavevmode\newline}}
            \ifthenelse{\equal{#4}{}}{}{{\textit{#4}}}
        }
    }
}{}
% \documentclass[10pt,a4paper,showtrims]{memoir}
% \trimFrame  
% \settrimmedsize{210mm}{145mm}{*} 
% \settrims{20mm}{34mm}