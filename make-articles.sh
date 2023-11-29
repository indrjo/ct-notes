#!/usr/bin/env sh

# DESCRIPTION *************************************************************
#
# The Makefile generates the whole book. Instead, this small script creates
# for each chapter one pdf for it. The reasons behind are mainly two:
#
# * If you want to check the outcome of some changes to the structure of
#   the document or you are that type that compiles too often, then TeXing
#   just the chapter you are working on is more quick and less expensive.
#
# * It may be useful to have each chapter separated from the others. It is
#   used the package xr, so do not worry about cross-references among the
#   diverse documents.
#
# *************************************************************************

set -e

for f in preamble base limits adjointness topoi; do
  t=${f^}
  sed "s,TITLE,$t,;s,DIRECTORY,$f," article-template.tex > $f.tex
  if [ -z $past ]; then
    echo "% external refs for $f.tex..." > $f-xr.tex
  else
    cp -u {$past,$f}-xr.tex
    echo '\externaldocument{'$past'}' >> $f-xr.tex
  fi
  latexmk -lualatex $f.tex
  past=$f
done

