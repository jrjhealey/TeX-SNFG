![stability-wip](https://img.shields.io/badge/stability-work_in_progress-lightgrey.svg)


# TeX-SNFG
A collection of predefined TeX/LaTeX/Tikz commands or macros for various glycans, as depicted in the Symbol Nomenclature for Glycans (SNFG - https://www.ncbi.nlm.nih.gov/glycans/snfg.html)  standard - Work in Progress


![alt text](https://raw.githubusercontent.com/jrjhealey/TeX-SNFG/master/docs/ncbi_snfg.png)



# 'Install'
To use these macros, the simples option is simply to add the content of `snfg.tex` to your preamble. The code defines all the colours/shapes, and loads the packages necessary.

Alternatively, download the TeX file somewhere sensible and use:

    % Preamble
    <preamble content>
    \input{/path/to/snfg.tex}
    
    \begin{document}
    <document content>
    \end{document}
    
*The shapes used here require PGF >= v 1.18, and that the `shape` package is loaded.
    
# To Do
 - Still a number of Macros to add for some of the more complicated shapes.
 - Redefine some of the commands to take variables for size?
 - Define some complex glycan shapes?
  - e.g. Mannobiose -> `(\Man) -- (\Man)`
