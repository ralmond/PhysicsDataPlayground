#cd "$( dirname "${BASH_SOURCE[0]}" )"
curl http://127.0.0.1:23119/better-bibtex/export/collection?/7/54UD7ND4.bibtex > ProjectPapers.bib
bibtool -s ProjectPapers.bib >ProjectPapersS.bib
pandoc --filter pandoc-citeproc -csl apa.csl papers.md -o refs.html
