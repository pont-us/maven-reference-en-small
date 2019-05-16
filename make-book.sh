#!/bin/sh

# Modify and build the sources for *Maven: The Complete Reference* to
# produce a PDF with a 90 x 120 mm page size.

# Exit immediately on error.
set -e

# Check out the directory if it's not already present. If it is present,
# we assume that it contains the expected source files.
if [ -d maven-reference-en ]
then
    cd maven-reference-en
else
    git clone https://github.com/sonatype/maven-reference-en.git
    cd maven-reference-en

    # This is the revision I used. The modifications may also work on
    # later revisions, but it's not guaranteed.
    git checkout c00193705b62
fi

# Replace quadruple spaces with single spaces. This is rather a crude and
# dangerous method, but in practice it only affects the indentation of
# the XML blocks.
perl -p -i -e 's/    / /g' ./chapter-*.asciidoc

# Apply a patch to modify the lates/custom-docbook.sty file.
patch -p1 <../patch

# Build the book.
./build.sh
