#cd "$( dirname "${BASH_SOURCE[0]}" )"
curl http://127.0.0.1:23119/better-bibtex/export/collection?/7/54UD7ND4.bibtex > ProjectPapers.bib
curl http://127.0.0.1:23119/better-bibtex/export/collection?/7/54UD7ND4.json > ProjectPapers.json
bibtool -s ProjectPapers.bib >ProjectPapersS.bib
pandoc --filter pandoc-citeproc --csl=apaplus.csl papers.md -o refs.html
