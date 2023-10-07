\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gravyartcl}

\LoadClass{scrartcl}

\DeclareOption{nodate}{\PassOptionsToPackage{nodate}{gravy}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions\relax

\RequirePackage{gravy}
