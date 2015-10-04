#!/bin/bash
set -e

mkdir pdfs

mv ./book.tex pdfs/

mv ./easy.md pdfs/
mv ./int.md pdfs/
mv ./hard.md pdfs/

mv ./easytmp.tex pdfs/
mv ./inttmp.tex pdfs/
mv ./hardtmp.tex pdfs/

mv ./easy.tex pdfs/
mv ./int.tex pdfs/
mv ./hard.tex pdfs/

mv ./book.pdf pdfs/

cd pdfs

git init
git config user.name "Automated Travis builds"
git config user.email "adrian.wielgosik@gmail.com"

git add .
git commit -m "Automatic deploy to GitHub"

git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:pdfs > /dev/null 2>&1