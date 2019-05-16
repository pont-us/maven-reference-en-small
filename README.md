Maven: The Complete Reference: small page edition
=================================================

I wanted to read *Maven: The Complete Reference* on my Kindle, so I made
some changes to the source to produce a PDF more suitable for display on a
six-inch screen. The license of *Maven: The Complete Reference* does not
permit distribution of modified versions, so I am releasing the
modifications as a script which fetches and modifies the canonical
version. Changes are as follows.

1. Page size reduced to 90 × 120 mm.

2. Margins reduced to a bare minimum.

3. Header removed (or, more precisely, pushed off the top of the page).

4. Horizontal lines at top and bottom retained, but made very thin and
   placed at the extreme edges of the page. If there is white space at the
   end of a page, my Kindle "helpfully" centres the content vertically,
   which doesn't look good. The lines act as placeholders to prevent this.

5. Indentation of XML reduced from four spaces to one space, to avoid
   excessive wrapping on the small screen.

The result is not perfect, but it's fairly decent.

The patched book can be built by running the `make-book.sh` script, which
will also fetch the original sources from Sonatype's GitHub repository if
required. The book will be placed in
`maven-reference-en/target/book-mvnref.pdf`.

By Pontus Lurcock <pont@talvi.net>, 2019. Released into the public domain.
