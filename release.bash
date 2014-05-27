#!/bin/bash

TAG=$(git tag -l | tail -n1)

latexmk -C

git co $TAG && (./figures/svg2pdf.bash; latexmk -xelatex main && mv main.pdf "毕业设计论文($TAG).pdf")

