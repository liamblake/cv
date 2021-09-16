.PHONY: resume.pdf cv.pdf all clean

all: resume.pdf cv.pdf

# MAIN LATEXMK RULE

# -pdf tells latexmk to generate PDF directly (instead of DVI).
# -pdflatex="" tells latexmk to call a specific backend with specific options.
# -use-make tells latexmk to call make for generating missing files.

# -interaction=nonstopmode keeps the pdflatex backend from stopping at a
# missing file reference and interactively asking you for an alternative.

resume.pdf: resume.tex \
latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make resume.tex

cv.pdf: cv.tex latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make cv.tex

clean: latexmk -CA