#!/bin/sh

src=revolucao

asciidoctor -a stylesheet="sty/github.css" $src.asdoc

a2x -a --lang=pt -d book --fop   $src.asdoc
a2x -a --lang=pt -d book -f epub $src.asdoc

asciidoctor -b docbook5 $src ; dblatex $src.xml

zip $src.zip -r files/ $src.html
