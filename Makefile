LATEXMK ?= latexmk
LATEXMK_FLAGS := -pdf -interaction=nonstopmode -file-line-error -halt-on-error -bibtex

.PHONY: all main matrix demos demo_light demo_dark demo_handout clean distclean

all: main matrix demos

main:
	$(LATEXMK) $(LATEXMK_FLAGS) main.tex

matrix:
	$(LATEXMK) $(LATEXMK_FLAGS) style-matrix.tex

demos: demo_light demo_dark demo_handout

demo_light:
	$(LATEXMK) $(LATEXMK_FLAGS) demo_light.tex

demo_dark:
	$(LATEXMK) $(LATEXMK_FLAGS) demo_dark.tex

demo_handout:
	$(LATEXMK) $(LATEXMK_FLAGS) demo_handout.tex

clean:
	$(LATEXMK) -c main.tex
	$(LATEXMK) -c style-matrix.tex
	$(LATEXMK) -c demo_light.tex
	$(LATEXMK) -c demo_dark.tex
	$(LATEXMK) -c demo_handout.tex

distclean:
	$(LATEXMK) -C main.tex
	$(LATEXMK) -C style-matrix.tex
	$(LATEXMK) -C demo_light.tex
	$(LATEXMK) -C demo_dark.tex
	$(LATEXMK) -C demo_handout.tex
