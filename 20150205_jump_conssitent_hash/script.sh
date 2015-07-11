#!/bin/sh
pandoc -H luatexja.tex -V mainfont=ricty --latex-engine=lualatex -t beamer -V theme:Singapore -o slides.pdf jump_consistent_hash.md
