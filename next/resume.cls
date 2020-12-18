%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Introduction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This class (resume.cls) is to define the layout/structure of the template (resume.tex)
% All content should go in the template file (resume.tex), not this file

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                OS Packages (Arch Linux)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Arch packages
% sudo pacman -S texmaker texlive-most

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Identification
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{resume}
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\nofiles                                   % Don't create .aux files
\pagestyle{empty}                          % Don't use page numbers

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[french,english]{babel}
\RequirePackage{eurosym}
\RequirePackage{iflang}
%\RequirePackage{resume}

\RequirePackage{geometry}                  % To change page size/orientation/margins
\RequirePackage{fontawesome5}              % To use FontAwesome5
\RequirePackage[document]{ragged2e}        % To left-align everything (using [document])
\RequirePackage{enumitem}                  % To change spacing between lists
  \setlist[itemize]{noitemsep,topsep=0pt}
\RequirePackage{titlesec}                  % To format the title
\RequirePackage{tabto}                     % To align text to a specific point
  \newcommand*{\rightsidetab}{.7\linewidth}% Set the tab on the right side
\RequirePackage{xcolor}                    % To define specific colors
  \definecolor{link}{HTML}{0A66C2}    % Custom color for URLs
\RequirePackage{hyperref}                  % To make clickable URLs and set PDF options
  \hypersetup{
  colorlinks=true,
  linkcolor=link,
  urlcolor=link,
  pdftitle={Corentin Le Molgat},
  pdfauthor={Corentin Le Molgat}
}

% Adjust margins
\iffalse
%\iftrue
\addtolength{\topmargin}{-2.0cm} % top margin
\addtolength{\textheight}{2.0cm} % bottom margin
\addtolength{\oddsidemargin}{-2.0cm} % left margin
\addtolength{\textwidth}{4.0cm} % right margin
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Contact info
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\ContactName}[1]{
  {\Huge{#1}}\\
}

\newcommand{\ContactInfoPhysical}[3]{
  {\faHome} {#1}, {#2} {#3}\\
}

\newcommand{\ContactInfoDigital}[6]{
  {\faPhone} \href{#1}{#2}  |
  {\faEnvelope} \href{#3}{#4}  |
  {\faLinkedin} \href{#5}{#6}\\
}

\newcommand{\ContactDevDigital}[4]{
  {\faGithub} \href{#1}{#2} |
  {\faStackOverflow} \href{#3}{#4}\\
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sections
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{\section}
  {\Large}
  {}{0em}
  {}
  [\titlerule]

\newcommand{\PlaceAndLocation}[2]{
  {\textbf{#1} \tabto{\rightsidetab}{\faMapMarker*} {#2}}
}

\newcommand{\TitleAndYears}[2]{
  {\textit{#1} \tabto{\rightsidetab}{\faCalendar*} {#2}}
}
