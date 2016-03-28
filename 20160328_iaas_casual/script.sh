#!/bin/sh

MARKDOWN_FILE=$1

if [ $# -ne 1 ]; then
  echo "Please give me a markdown file :X"
  exit 1
fi

pandoc -H luatexja.tex -V mainfont=ricty --latex-engine=lualatex -t beamer -V theme:Singapore -o slides.pdf "${MARKDOWN_FILE}"
