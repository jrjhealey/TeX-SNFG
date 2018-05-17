#!/bin/bash
# Generates a test file for all the shapes present in a typesettable tex file
set -eo pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TESTFILE="${DIR%/}/tests.tex"

# Build tex test document preamble

echo "\documentclass[a4paper, oneside, 11pt]{report}
\usepackage[left=4cm, right=2cm, top=1.5cm, bottom=2.5cm]{geometry}
\input{"${DIR}"/snfg.tex}
\begin{document}
% Tests last created on $(date)
" > "$TESTFILE"

lines=$(perl -nle 'print "$1" while(/\\newcommand\{(.*?)\}|^\%return/g)' snfg.tex )
echo $lines

echo "Available commands are:"
echo "$lines" | tr ' ' '\n'| tee  "$TESTFILE"

echo "\end{document}" >> "$TESTFILE"
