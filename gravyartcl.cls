\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gravyartcl}

\LoadClass{scrartcl}

\DeclareOption{nodate}{\PassOptionsToPackage{nodate}{gravy}}
\DeclareOption{minted}{\PassOptionsToPackage{minted}{gravy}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions\relax

\RequirePackage{gravy}
