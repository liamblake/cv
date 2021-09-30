RESUME := $(PWD)/src/resume.tex
ARGS := -pdf -lualatex -use-make

STYLE_FILES := $(wildcard $(PWD)/src/*.sty)
CLASS_FILES := $(wildcard $(PWD)/src/*.cls)

RESUME_BUILD := $(PWD)/build/LBlake_resume.pdf

.PHONY: $(RESUME).pdf all clean

all: $(RESUME_BUILD)

$(RESUME_BUILD): $(RESUME)
	latexmk $(ARGS) $(RESUME) $(CLASSES)

clean:
	latexmk -C
