\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gravyreprt}

\LoadClass{scrreprt}

\DeclareOption{nodate}{\PassOptionsToPackage{nodate}{gravy}}
\DeclareOption{minted}{\PassOptionsToPackage{minted}{gravy}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\ProcessOptions\relax

\RequirePackage{gravy}
